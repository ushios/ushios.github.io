golang testing
===============

sync.WorkGroupでracing
----------------------

goroutineを使ったテストで

```

var wg sync.WorkGroup

go func(){
	wg.Add(1)
	...
	wg.Done()
}
wg.Wait()

```

上記のようにgoroutineの中にAddを入れてしまうと、racingしてしまう。


```
var wg sync.WorkGroup

wg.Add(1)
go func(){
	...
	wg.Done()
}
wg.Wait()

```
