func boj11722(){
    let tc = Int(readLine()!)!
    let inp = readLine()!.split(separator: " ").map{
        Int($0)!
    }
    
    var LIS: [Int] = [Int](repeating: 0, count: tc)
    var LIS_Length: Int = 1
    
    LIS[0] = inp[0]
    
    for i in 1..<tc {
        
        if LIS[LIS_Length-1] > inp[i] {
            LIS[LIS_Length] = inp[i]
            LIS_Length += 1
        }
        else{
            var s = 0, e = LIS_Length-1
            
            while s<e {
                let mid = (s+e)/2
                if LIS[mid] <= inp[i] {
                    e = mid
                }
                else {
                    s = mid+1
                }
            }
            LIS[s] = inp[i]
        }
    }
    print(LIS_Length)
}
