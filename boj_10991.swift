func boj10991(){
    let inp = Int(readLine()!)!
    
    for value in 1...inp{
        var str = String()
        for _ in 0..<inp-value {
            str += " "
        }
        str += "*"
        for _ in 1..<value {
            str += " *"
        }
        print(str)
    }
}
