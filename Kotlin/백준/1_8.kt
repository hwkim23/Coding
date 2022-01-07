//1-8
fun main(args: Array<String>) {
    val input:String? = readLine()
    val split:List<String> = input!!.split(" ".toRegex())
    val a = split[0].toDouble()
    val b = split[1].toDouble()
    print(a/b)
}
