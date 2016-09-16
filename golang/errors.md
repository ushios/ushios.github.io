Errors, Warnings
=================


composite literal uses unkeyed fields
--------------------------------------

`composite literal uses unkeyed fields`とでたら

```
var foo *Foo
foo = &Foo{"bar"}
```
と言った感じでKeyを与えていない箇所があるはずなので

```
var foo *Foo
foo = &Foo{
	Key: "bar",
}

```
とする。