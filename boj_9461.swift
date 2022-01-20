func boj9461(){
    let tc = Int(readLine()!)!
    var dp: [Int] = [Int](repeating: 0, count: 101)
    dp[1...10] = [1, 1, 1, 2, 2, 3, 4, 5, 7, 9]
    for i in 11...100 {
        dp[i] = dp[i-1] + dp[i-5]
    }
    for _ in 0..<tc {
        let inp = Int(readLine()!)!
        print(dp[inp])
    }
}
