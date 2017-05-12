Golang
======

入門
----

 - [シュッと golang に入門する話](http://sixeight.hatenablog.com/entry/2015/03/16/032222)
 - [go言語の名前空間について](http://blog.satotaichi.info/namespaces-of-golang/)
 - [逆引きGolang](http://ashitani.jp/golangtips/index.html)

### golang実装時気になったメモ

- [golangのふるまい](about.md)
- [エラーなど](errors.md)
- [コメントとか](comments.md)
- [JSON](https://eager.io/blog/go-and-json/)
- [Go ではエラーを文字列比較する？という話について](http://dsas.blog.klab.org/archives/cat_50043510.html)
- [Go のスライスでハマッたところ](http://jxck.hatenablog.com/entry/golang-slice-internals2)

### IDE

 - [ATOMでGolangの環境設定](http://qiita.com/m0a/items/b7b27254a43d50b7aba2)

### 情報まとめ
 - [golang on MacOSXチュートリアル](./tutorial.md)
 - [Using gorm](./gorm.md)
 - [Testing](./testing.md)

## goのプロキシ関連
 - [jpillora/go-tcp-proxy](https://github.com/jpillora/go-tcp-proxy)
 - [ericflo/proxy.go](https://gist.github.com/ericflo/7dcf4179c315d8bd714c)
 - [mike-zhang/udpProxy.go](https://gist.github.com/mike-zhang/3853251)

memo
----

- [gvmでgoをバージョン指定で簡単インストール](http://qiita.com/isaoshimizu/items/1a5d51aed98a57a9bcd4)
- [Golang でのウェブ開発を考えてみる](http://qiita.com/voluntas/items/7af2f06d2688f649576f)
- [Go言語でWebAppの開発に必要なN個のこと](http://qiita.com/tenntenn/items/b8b27e32c28f7569f41a)
- [gvmを用いてRevelの開発環境を作成](http://blog.mnrtks.jp/posts/2014/02/24/gvm-revel/)
- [gomを使ってGoのパッケージをGemfileライクに管理して使う](http://hiropo.co.uk/archives/978.html)
- [実践Go言語](http://golang.jp/effective_go)
- [GO言語でパッケージを作成して世界に公開する方法](http://blog.daisukeyamashita.com/post/1209.html)
- [Go言語(Golang) はまりどころと解決策](http://www.yunabe.jp/docs/golang_pitfall.html#interface-nil-gointerface)
- [Golang（Go言語）を採用して、たった二人で基盤となるAPIゲートウェイを開発した話](http://tech.medpeer.co.jp/entry/2015/12/14/073000)
- [Go言語での構造体実装パターン](http://blog.monochromegane.com/blog/2014/03/23/struct-implementaion-patterns-in-golang/)

開発環境構築について
-----------------

バージョン・開発環境切り替えなどは[gvm](#memo)使うと楽。

パッケージ管理は[gom](https://github.com/mattn/gom)が良さそう。

IDEは[IntelliJ](http://stormcat.hatenablog.com/entry/2015/04/13/123000)かatomあたりかなぁ・・・
IntelliJなら[dbgをセットアップ](http://qiita.com/puttyo_bubu/items/a8476e4422259d75f449)して使おう。

CLIツール作るときに便利
--------------------

- [tcnksm/gcli](https://github.com/tcnksm/gcli)


気になる動向
-----------

- [Go言語のDependency/Vendoringの問題と今後．gbあるいはGo1.5](http://deeeet.com/writing/2015/06/26/golang-dependency-vendoring/)
	- [[Go] ビルドツール gb を使ってみた](http://blog.yohei.org/go-build-tool-gb/)\

idiomatic Go Readability
==========================
- [CodeReviewComments](https://github.com/golang/go/wiki/CodeReviewComments)
- [haya14busa/goverage](https://github.com/haya14busa/goverage)
- [EffectiveGo](https://golang.org/doc/effective_go.html)
