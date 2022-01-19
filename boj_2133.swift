func boj2133(){
    let N = Int(readLine()!)!
    var dp: [Int] = [Int](repeating: 0, count: N+1)
    dp[0] = 1
    for num in 1...N {
        if num%2 == 0 {
            var result = dp[num-2]*3
            var d = 4
            while num-d>=0 {
                result += dp[num-d]*2
                d += 2
            }
            dp[num] = result
        }
    }
    print(dp[N])
}
