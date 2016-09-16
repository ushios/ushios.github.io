Using gorm and goji
====================


```
go get github.com/jinzhu/gorm
go get github.com/zenazn/goji
```

参考サイト
--------

- [Share Values Between Middlewares](https://www.nicolasmerouze.com/share-values-between-middlewares-context-golang/)
- [goji コトハジメ - GORM](http://qiita.com/voluntas/items/75a9a196233692775f57)
- [golangでいい感じにwebサービス書くの考える(2)](http://9610n.hateblo.jp/entry/2015/02/26/151246)
- [net/httptestでgojiのテストをする](http://qiita.com/r_rudi/items/727fb85030e91101801d)

##### gorm goji関係ないやつ
- [golang のミドルウェアとして組み込むだけでパフォーマンス改善が見込める「HTTP Coala」](http://mattn.kaoriya.net/software/lang/go/20151120113437.htm)
- [GoでCRUDでMVCなWEBアプリケーションを書く](http://qiita.com/masahikoofjoyto/items/b2e6c2cad447e48f91ee)
- [Goで作ったWEBアプリケーションの環境ごとの接続設定とテストをする](http://qiita.com/masahikoofjoyto/items/d381ee31854405c86c47)
- [#golang　設定値をどうするか？(設定ファイル読み込み編)](http://makotow.github.io/blog/2014/07/29/golang-setting-from-file/)
---






Tips
----
#### sql生で見たい時
`Debug()`を挟む。

```
// Enable Logger
db.LogMode(true)

// Diable Logger
db.LogMode(false)

// Debug a single operation
db.Debug().Where("name = ?", "jinzhu").First(&User{})
```

[gorm#logger](https://github.com/jinzhu/gorm#logger)


#### scope

[gorm - Scorpes](https://github.com/jinzhu/gorm#scopes)

#### Connection Poolとか

[Source file src/database/sql/sql.go](https://golang.org/src/database/sql/sql.go?s=13127:13184#L458)