//1-9
fun main(args: Array<String>) {
    val input:String? = readLine()
    val split:List<String> = input!!.split(" ".toRegex())
    val a = split[0].toInt()
    val b = split[1].toInt()
    println(a+b)
    println(a-b)
    println(a*b)
    println(a/b)
    println(a%b)
}
