fun main(args: Array<String>) {
    println("Hello World!")
    printKotlin()
    //String interpolation
    var a = 1
    val s1 = "a is $a"
    a = 2
    val s2 = "${s1.replace("is","was")}, but now is $a"
}
//Val -> value: 읽기전용 변수, 값의 할당이 1회만 가능, type 안 쓰면 추론됨
    //val a.Int = 1
//var -> mutable 변수

// Void -> Unit, 생략 가능
fun printKotlin() {
    println("Hello")
}

fun sum(a:Int, b:Int): Int {
    return a + b
}
//함수 몸체가 식인 경우 return 생략가능
    //이런 경우 return type이 추론됨
fun sum2(a:Int, b:Int) = a + b

//조건문
fun maxOf(a:Int, b:Int): Int {
    if (a > b) {
        return a
    }
    else {
        b //이렇게 리턴이 빠져도 됨
    }
    //2
    val max = if (a > b) a else b
    return max
}
//조건식으로 사용가능
fun MaxOf(a:Int, b:Int) = if (a > b) a else b

//while loop
fun whileLoop() {
    val items = listOf("apple","banana","kiwi")
    var index = 0
    while (index < items.size) {
        println("item at $index is ${items[index]}")
        index++
    }
    //do-while문에서 do 다음에 오는 코드는 조건식과 상관없이 무조건 한 번은 실행됨
    //body의 지역변수를 do-while문의 조건문이 참조 할 수 있음
    /*do {
        val y = retrieveData()
    }while (y!= null)*/
}

//when expression
fun describe(obj: Any) {
    when (obj) {
        1 -> "One"
        "Hello" -> "Greeting"
        is Long -> "Long"
        !is String -> "Not a string"
        else -> "Unkown"
    }
    //when문이 식으로 사용된 경우에는 조건은 만족하는 branch의 값이 전체 식의 결과 값이 됨
    //else의 경우 다른 branch들의 조건이 만족되지 않을 때 수행됨
    //When이 식으로 사용된 경우 else문이 필수임
    var res = when (obj) {
        100 -> "A"
        90 -> "B"
        80 -> "C"
        else -> "F"
    }
    var Res = when (obj) {
        true -> 1
        false -> 0
        else -> "몰라"
    }
    //여러 조건들이 같은 방식으로 처리될 수 있는 경우, branch의 조건문에 콤마를 사용하여 표기하면 됨
    when (obj) {
        0, 1 -> print("x == 0 or x == 1")
        else -> print("otherwise")
    }
    //Branch의 조건문에 함수나 식을 사용할 수 있음
    var x:Int = 2
    when (x) {
        1 + 3 -> print("4")
        else -> print("s does not encode x")
    }
    //range나 collection에 in이나 !in으로 범위 등을 검사할 수 있음
    val validNumbers = listOf(3,6,9)
    when (x) {
        in validNumbers -> print("x is valid")
        in 1..10 -> print("x is in the range")
        !in 10..20 -> print("x is outside the range")
        else -> print("none of the above")
    }
    //when은 if-else if 체인을 대체할 수 있음
    //when에 인자를 입력하지 않으면, 논리연산으로 처리됨
    /*when {
        x.isOdd() -> print("x is odd")
        x.isEven() -> print("x is even")
        else -> print("x is funny")
    }*/
    //is나 !is를 이용하여 타입도 검사 할 수 있음
    /*fun hasPrefix(x:Any) = when(x) {
        is String -> x.startsWith("prefix")
        else -> false
    }*/
}

//collections
fun Collections() {
    //컬렉션도 in으로 loop가능
    val items = listOf("apple","banana","kiwi")
    for (item in items)
        println(item)
    //in으로 해당 값이 collection에 포함되는지 체크 가능
    val Items = setOf("apple","banana","kiwi")
    when {
        "orange" in Items -> println("juicy")
        "apple" in Items -> println("apple is fine too")
    }
    //람다식을 이용해서 컬렉션에 filter, map 등의 연산 가능
    val fruits = listOf("banana","avocado","apple","kiwi")
    fruits
        .filter {it.startsWith("a")}
        .sortedBy {it}
        .map {it.toUpperCase()}
        .forEach {println(it)}
}

//배열 array
    //배열은 Array 클래스로 표현됨
    //get, set ([] 연산자 오버로딩됨)
    //size 등 유용한 멤버 함수 포함
fun Array () {
    var array:Array<String> = arrayOf("코틀린","실습")
    println(array.get(0))
    println(array[0])
    println(array.size)
    val a = arrayOf("0","1","2","3","4")
    val b = Array(5,{i -> i.toString()}) //둘이 똑같음
    //특별한 array 클래스: IntArray, ShortArray
    val x:IntArray = intArrayOf(1,2,3)
    x[0] = 7
    println(x.get(0))
    println(x[0])
    println(x.size)
}

//문자열 String
    //문자열은 String 클래스로 표현
    //String은 characters로 구성됨
    //s[i]와 같은 방식으로 접근 가능 (immutable이므로 변경 불가)
fun stringPractice() {
    var x:String = "Kotlin"
    println(x.get(0))
    println(x[0])
    println(x.length)
    for (c in x) {
        println(c)
    }

    //Escaped string, backslash를 사용하여 escaping 처리
    val s = "Hello, world!\n"
    //Raw string ("""Kotlin""")
    //escaping 처리 필요 없음, 개행이나 어떠한 문자 포함 가능
    val t = """
        ""'이것은 코틀린의 
        raw String 
        입니다.'""
    """.trimIndent()
}

//ranges
fun Ranges() {
    //In 연산자를 이용해서 숫자 범위를 체크 가능
    val x = 3
    if (x in 1..10) {
        println("fits in range")
    }
    //Range를 이용한 for loop
    for (x in 1..5) {
        print(x)
    }
}

//for loop
fun forLoop() {
    //for문은 iterator을 제공하는 모든 것을 반복할 수 있음
    val items = listOf("apple","banana","kiwi")
    for (i in items)
        print(i)
    //for문의 body가 블록이 올 수도 있음
    for (i in 1..3) {
        println(i)
    }
    for (i in 6 downTo 0 step 2) {
        println(i)
    }
    //배열이나 리스트를 반복할 때, index를 이용하고 싶다면 indices를 이용하면 됨
    val array = arrayOf("가","나","다")
    for (i in array.indices) {
        println("$i:${array[i]}")
    }
    //index를 이용하고 싶을 때, withIndex()를 이용할 수도 있음
    for ((index, value) in array.withIndex()) {
        println("$index:${value}")
    }
}

//nullable
    //값이 null일 수 있는 경우 타입에 nullable 마크를 명시 해야 함
fun parseInt(str:String): Int? {
    //정수가 아닌 경우 null을 리턴
    if (str != null) return 2 else return null
}
    //nullable 타입의 변수를 접근 할 때는 반드시 null 체크를 해야 함
    //그렇지 않으면 컴파일 오류가 발생 됨
fun printProduct(arg1:String, arg2:String) {
    val x:Int? = parseInt(arg1)
    val y:Int? = parseInt(arg2)

    if (x != null && y != null) {
        println(x*y)
    } else {
        println("either '$arg1' or '$arg2' is not a number")
    }
}

//자동 타입 변환
    //타입 체크만 해도 자동으로 타입 변환이 됨
fun getStringLength(obj:Any):Int? {
    if (obj is String) {
        //'obj'가 자동으로 String 타입으로 변환 됨
        return obj.length
    }
    return null
}
