func boj11721(){
    let inp = readLine()!
    var num = 1
    for char in inp{
        print(char, terminator: "")
        if num % 10 == 0 {
            print("")
        }
        num = num + 1
    }
}
