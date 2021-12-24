func boj2442(){
    let inp = Int(readLine()!)!
    for value in 1...inp {
        for _ in 0..<inp-value {
            print(" ",terminator: "")
        }
        for _ in 0..<2*value-1{
            print("*",terminator: "")
        }
        print("")
    }
}
