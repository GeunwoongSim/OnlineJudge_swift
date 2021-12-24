func boj2438(){
    let inp = Int(readLine()!)!
    for value in 1...inp {
        for _ in 0..<value {
            print("*",terminator: "")
        }
        print("")
    }
}
