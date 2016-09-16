go-sql-driver/mysql調査
=======================

### DBオブジェクト作成編

[go-sql-driver/mysql](https://github.com/go-sql-driver/mysql)のサンプルを見習って、[Openするところからの処理](https://github.com/go-sql-driver/mysql#usage)を追っていく。

[Openの処理](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L480-L495)で、`driveri` に各ドライバの実装があるものと思われる。

それを[DB構造体](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L224-L249)の `driver driver.Driver` へ格納。

- 参考
	- [database/sql.Open](https://golang.org/pkg/database/sql/#Open)
	- [database/sql.DB](https://golang.org/pkg/database/sql/#DB)

### トランザクション開始編

[Begin](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L1147-L1162)が一番わかりやすそうなので、トランザクション開始のところから更に追っていく

`Begin` からさらに[db.begin](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L1164-L1181)を呼んでいて、引数に[connReuseStrategy](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L254-L261)を渡している。
 `alwaysNewConn` と `cachedOrNewConn` なので、ここで新しいコネクションか、既に使ったことのあるコネクションか処理が別れる。

`begin` を辿って行くと、 `db.conn(strategy)` なるものを目撃する。その処理が[conn](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L779-L842)メソッドなのだが、ここでようやく処理っぽいものが現れる。

- 参考
	- [database/sql.Begin](https://golang.org/pkg/database/sql/#DB.Begin)


#### 既存コネクションを使用する（可能性がある処理）

[strategyがcachedOrnewConnの場合のif文](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L790-L801)を見るとわかるが、 [db.freeConn](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L233)へコネクションを確認しに行っている。

コネクションが取得できた場合は、そのまま遅のコネクションを返して、処理は終了するが、取得できなかった場合は[こちらの処理](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L803-L820)に入るが、ここではコネクション数が最大より大きい場合はwaitさせるようになっている。

設定されているコネクション最大数より少ない場合は新しくコネクションを作る[こちらの処理](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L822-L841)に入る。
そしてここで、[db.driver.Open](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L824)で、各driverのOpen処理に入り `ci` を得る。

その `ci` を[driverConn](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L263-L281)に格納し、[addDepLocked](https://github.com/golang/go/blob/master/src/database/sql/sql.go#L408-L418)を実行したうえでコネクションクラスとして返している
