
func boj11022(){
    let TC = Int(readLine()!)!
    for tc in 1...TC{
        let inp = readLine()!.split(separator: " ").map{Int($0)!}
        print("Case #\(tc): \(inp[0]) + \(inp[1]) = \(inp[0]+inp[1])")
        
    }
}
