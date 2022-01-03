func boj10992(){
    let inp = Int(readLine()!)!
    for value in 1..<inp {
        var str = String()
        for _ in 0..<inp - value {
            str += " "
        }
        str += "*"
        if value != 1 {
            for _ in 0..<(2*value-3){
                str += " "
            }
            str += "*"
        }
        print(str)
    }
    for _ in 0..<2*inp-1{
        print("*",terminator: "")
    }
}
