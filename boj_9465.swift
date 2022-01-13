func boj9465(){
    let tc = Int(readLine()!)!
    for _ in 0..<tc {
        let inp = Int(readLine()!)!
        var inpArr: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: inp), count: 2)
        inpArr[0] = readLine()!.split(separator: " ").map {
            Int($0)!
        }
        inpArr[1] = readLine()!.split(separator: " ").map {
            Int($0)!
        }
        
        var resultArr: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: inp), count: 3)
        resultArr[0][0] = inpArr[0][0]
        resultArr[1][0] = inpArr[1][0]
        resultArr[2][0] = 0
        
        for N in 1..<inp {
            resultArr[0][N] = max(resultArr[1][N-1], resultArr[2][N-1]) + inpArr[0][N]
            resultArr[1][N] = max(resultArr[0][N-1], resultArr[2][N-1]) + inpArr[1][N]
            resultArr[2][N] = max(max(resultArr[0][N-1], resultArr[1][N-1]),resultArr[2][N-1])
        }
        let result = max(max(resultArr[0][inp-1], resultArr[1][inp-1]),resultArr[2][inp-1])
        print(result)
    }
}
