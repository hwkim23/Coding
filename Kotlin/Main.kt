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
        return b
    }
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
    for (i in 1..3) {
        println(i)
    }
    for (i in 6 downTo 0 step 2) {
        println(i)
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