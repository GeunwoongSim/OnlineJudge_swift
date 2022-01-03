func boj2522(){
    let inp = Int(readLine()!)!
    
    for value in (1..<inp).reversed() {
        for _ in 0..<value {
            print(" ",terminator: "")
        }
        for _ in 0..<inp-value{
            print("*",terminator: "")
        }
        print("")
    }
    
    for _ in 0..<inp {
        print("*",terminator: "")
    }
    print("")
    
    for value in 1..<inp {
        for _ in 0..<value{
            print(" ",terminator: "")
        }
        for _ in 0..<inp-value{
            print("*",terminator: "")
        }
        print("")
    }
}
