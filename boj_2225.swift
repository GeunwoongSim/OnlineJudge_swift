func boj2225(){
    let divN: Int = 1000000000
    let inp: [Int] = readLine()!.split(separator: " ").map{
        Int($0)!
    }
    var dp: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: 201), count: 201)
    
    for i in 1...200{
        dp[0][i] = 1
        dp[i][1] = 1
        dp[1][i] = i
    }
    
    for K in 2...200 {
        for N in 2...200{
            var sum = 0
            for i in 0...N{
                sum = ((sum%divN) + (dp[i][K-1]%divN)) % divN
            }
            dp[N][K] = sum
        }
    }
    print(dp[inp[0]][inp[1]])
}
