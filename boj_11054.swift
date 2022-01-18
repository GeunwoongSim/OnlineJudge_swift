func boj11054(){
    let tc = Int(readLine()!)!
    let inp = readLine()!.split(separator: " ").map{
        Int($0)!
    }
    
    var frontLIS: [Int] = [Int](repeating: 1, count: tc)
    var backLIS: [Int] = [Int](repeating: 1, count: tc)
    
    for i in 1..<tc {
        for l in 0..<i {
            if inp[i] > inp[l] {
                if frontLIS[i] < frontLIS[l]+1 {
                    frontLIS[i] = frontLIS[l]+1
                }
            }
        }
    }
    for i in (0..<(tc-1)).reversed() {
        for l in ((i+1)..<tc).reversed() {
            if inp[i] > inp[l] {
                if backLIS[i] < backLIS[l]+1 {
                    backLIS[i] = backLIS[l]+1
                }
            }
        }
    }
    
    var result: Int = 0
    for i in 0..<tc {
        if result < frontLIS[i] + backLIS[i] {
            result = frontLIS[i] + backLIS[i]
        }
    }
    print(result-1)
    
}
