func boj2445(){
    let inp = Int(readLine()!)!
    for value in 1..<inp {
        for _ in 0..<value {
            print("*",terminator: "")
        }
        for _ in 0..<2*inp-2*value{
            print(" ",terminator: "")
        }
        for _ in 0..<value {
            print("*",terminator: "")
        }
        print("")
    }
    for _ in 1...2*inp{
        print("*",terminator: "")
    }
    print("")
    
    for value in 1..<inp{
        for _ in 0..<inp-value {
            print("*",terminator: "")
        }
        for _ in 0..<2*value{
            print(" ",terminator: "")
        }
        for _ in 0..<inp-value {
            print("*",terminator: "")
        }
        print("")
    }
}
