func boj2441(){
    let inp = Int(readLine()!)!
    for value in 0..<inp {
        for _ in 0..<value {
            print(" ",terminator: "")
        }
        for _ in 0..<inp-value {
            print("*",terminator: "")
        }
        print("")
    }
}
