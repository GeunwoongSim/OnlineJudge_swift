func boj2440(){
    let inp = Int(readLine()!)!
    for value in 0..<inp {
        for _ in 0..<inp-value {
            print("*",terminator: "")
        }
        print("")
    }
}
