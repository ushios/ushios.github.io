Golangのふるまい
===============

[]Interface{}（自由な型）
-----------------------

[golang/go wiki InterfaceSlice](https://github.com/golang/go/wiki/InterfaceSlice)からもあるが、インターフェースの配列は格納することが面倒くさい。

newの挙動
--------
[実践Go言語 - newによる割り当て](http://golang.jp/effective_go#allocation_new)より、下記は等価

```
式new(File)と&File{}
```

foreach的ループ
---------------
[Go by Example: Range](https://gobyexample.com/range)より。range関数がキモっぽい。

```
nums := []int{2, 3, 4}
for i, num := range nums {
    if num == 3 {
        fmt.Println("index:", i)
    }
}
```

`i`を使わないといけなくなるのでそれが嫌な場合は`_`に入れて破棄する。


string -> int, int -> string
-----------------------------

[Go言語でのString・Int間の変換速度について](http://qiita.com/evalphobia/items/ab6aefdaa576217ef8fa)より。

```
strconv.Atoi(string) int, error

strconv.Itoa(int) string
```

型アサーション（キャスト）
---------------------

[[Go言語] Goでのキャスト (型アサーション)](http://www.fujlog.net/2014/02/golang-type-assertion.html)より。

型アサーションはInterfaceにしかなれない。

```
v, ok := x.(T)
```