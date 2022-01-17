//LIS(Longest Increasing Subsequence

func boj11053(){
    //입력
    let tc = Int(readLine()!)!
    let inp: [Int] = readLine()!.split(separator: " ").map{
        Int($0)!
    }
    //LIS 구하기
    var LIS: [Int] = [Int](repeating: 0, count: tc)
    LIS[0] = inp[0]
    var LIS_length = 1
    for i in 1..<tc {
        if LIS[LIS_length-1] < inp[i] {
            LIS[LIS_length] = inp[i]
            LIS_length += 1
        }
        
        else{
            var s = 0, e = LIS_length-1
            var mid = 0
            while s<e {
                mid = (s+e)/2
                
                if inp[i] <= LIS[mid] {
                    e = mid
                }
                else{
                    s = mid+1
                }
            }
            LIS[s] = inp[i]
        }
    }
    print(LIS_length)
}
