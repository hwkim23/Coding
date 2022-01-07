//1-10
fun main(args: Array<String>) {
    val input:String? = readLine()
    val split:List<String> = input!!.split(" ".toRegex())
    val a = split[0].toInt()
    val b = split[1].toInt()
    val c = split[2].toInt()
    println((a+b)%c)
    println(((a%c)+(b%c))%c)
    println((a*b)%c)
    println(((a%c)*(b%c))%c)
}