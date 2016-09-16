PHP Programming
============

`<?php ?>`は省略させていただきます。

処理
----

コンピューターへの命令。基本的には上から順番に実行される。

    printf("Hello World.");

上記は、`Hello World.`と表示せよとコンピューターに命令している。


値
---


### 数値

クォーテーションで囲まれていない

    printf(1); // 1 が出力される

### 文字列

クォーテーションで囲まれている

    printf("hello world."); // これは文字列
    printf('this is string.'); // これも文字列
    printf('123'); // これも文字列


### 真偽値

少しわかりにくいですが、`真`と`偽`が存在します。`true`が`真`で`false`が`偽`になります。


変数
----

`値`を記憶させたり、取り出したりできる。

    $a = 1;
    $b = 4;
    
    printf($a) // 1　が出力される


演算子
-----

### 和

`プラス`を使用します。

    $a = 4;
    $b = 2;
    
    printf($a + $b); // 6


### 差

`ハイフン`を使用します。

    $a = 4;
    $b = 2;
    
    printf($b - $a); // 2


### 積

`アスタリスク`を使用します。

    $a = 4;
    $b = 2;
    
    printf($a * $b); // 8

### 商

`スラッシュ`を使用します。

    $a = 4;
    $b = 2;
    
    printf($a / $b); // 2

### あまり

`パーセント`を使用します。

    $a = 4;
    $b = 2;
    
    printf($a % $b) // 0

### 文字列結合

`ピリオド`を使用します。

    $a = 'hello';
    $b = 'world';
    
    printf($a . $b); // helloworld

### 比較演算子

`だいなり`や`しょうなり`や`イコール`を組み合わせます。括弧で囲む事で真偽値を

	$number = 1;

	// 同じであるとき、真を表します。
    var_dump( $number == 1 ); // true
    
    // $numberが4より大きい場合に真を表します。
    var_dump( $number > 1 ); // false
    
    // $numberが4以上の場合に真を表します。
    var_dump( $number >= 1 ); // false
    
    // $numberが1未満の場合に真を表します。
    var_dump( $number < 1 ); // false
    
    // $numberが1以下の場合に真を表します。
    var_dump( $number <= 1 ); // true
    

関数
----

`処理`呼び出してを実行できる。

    printf('hello world'); // hello world と表示される

#### ランダム関数を使用して、数値を取得後、出力する

    $number = rand();
    printf($number); // ランダムな数値が出力される
    
    // 以下のように省略も出来る
    printf(rand());

#### ランダム関数を使用して、1〜100の間を指定してランダムに数値を取得する

    $number = rand(1, 100);

このうちの`1`を`第一引数`と言い、`100`を`第二引数`と言う。
また、ランダム関数が返す`値`の事を`返り値`と言う。


自作関数
-------

`関数`を自作できる

    function printMyName(){
        printf("My name is Suzuki Taro.");
    }
    
    printMyName(); // My name is Suzuki Taro. と出力される
    printMyName(); // My name is Suzuki Taro. と出力される
    printMyName(); // My name is Suzuki Taro. と出力される
    printMyName(); // My name is Suzuki Taro. と出力される
    printMyName(); // My name is Suzuki Taro. と出力される

何度実行しても結果は同じ。

上記では不便なので、`引数`を用いて`変数`へ`値`を格納して使用する。


    function printName($name){
        printf("My name is " . $name);
    }
    
    printName('Tanaka Satoshi'); // My name is Tanaka Satoshi と出力される
    printName('Yamada Hanako'); // My name is Yamada Hanako と出力される
    printName('Suzuki Jiro'); // My name is Suzuki Jiro と出力される
    printName('Yamamoto Kanae'); // My name is Yamamoto Kanae と出力される


### 返り値のある関数

    function sayHello($name){
    	$message = 'Hello ' . $name;
    	return $message;
    }
    
    $sayToTanaka = sayHello('Tanaka');
    $sayToSuzuki = sayHello('Suzuki');
    
    print($sayToTanaka); // Hello Tanaka と出力される
    print($sayToSuzuki); // Hello Suzuki と出力される


制御構文
--------
`処理`を操作する。

### 分岐

#### if else 文

括弧内の比較等の評価によって処理を分岐します。
括弧内が`真`の場合ははじめの`{}`の内部の処理のみを実行し、`偽`の場合は`else`以下の`{}`の内部の処理を実行します。

	$a = rand(1, 100);
    if ( $a < 50 ) {
    	echo 'greater than or equal to 50';
    } else {
        echo 'less than 50';
    }
    
ランダムで取得した値が`50より少ないとき`に`less than 50`と表示する。`そうでなければ`、`greater than or equal to 50`と表示する。

`{}`を`コードブロック`と言います。


#### switch case 文

括弧内の比較等の評価によって処理を分岐します。
`if`文と似ているのと、ややこしいので省きます。

### 繰り返し

#### while 文

括弧内の評価が`真`の場合、`コードブロック`内の処理を実行し、再度括弧内を評価し、`真`の場合、`コードブロック`ないの処理を実行し、括弧内の評価が`偽`になるまで繰り返し処理を実行します。

    while(true){
        print("hello");
    }

上記は永遠と`hello`が表示され続けます。

    $a = 1;
    while($a < 10){
        print($a);
        $a = $a + 1;
    }
        
上記は`123456789`と出力されます。    

#### for 文

