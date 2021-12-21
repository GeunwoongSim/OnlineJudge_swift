
func boj10952(){
    
    while true {
        let inp = readLine()!.split(separator: " ").map{Int($0)!}
        if((inp[0] == 0) || (inp[1] == 0)){
            break
        }
        else{
            print(inp[0]+inp[1])
        }
    }
    
}
