func boj10818(){
    let tc = readLine()!
    //Int(String($0))이 Int($0)보다 빠르다 -> fastpath, slowpath
    let inp = readLine()!.split(separator: " ").map{ Int(String($0))! }
    
    print("\(inp.min()!) \(inp.max()!)")
}
