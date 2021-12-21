func boj11720(){
    let TC = Int(readLine()!)!
    let inp: String = readLine()!
    var sum: Int = 0
    for value in inp {
        let num = Int(String(value))!
        sum = sum + num
    }
    print(sum)
}
