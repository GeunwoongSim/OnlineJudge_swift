func boj2446(){
    let inp = Int(readLine()!)!
    for value in 0..<inp {
        for _ in 0..<value {
            print(" ",terminator: "")
        }
        for _ in 0..<(2*inp-1-2*value) {
            print("*",terminator: "")
        }
        print("")
    }
    
    for value in 1..<inp{
        for _ in 1..<inp-value {
            print(" ",terminator: "")
        }
        for _ in 0..<2*value+1{
            print("*",terminator: "")
        }
        print("")
    }
    
    
}
