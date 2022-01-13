func boj2156(){
    let tc = Int(readLine()!)!
    var inpArr: [Int] = [Int](repeating: 0, count: tc)
    for n in 0..<tc {
        inpArr[n] = Int(readLine()!)!
    }
    
    var resultArr: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: tc), count: 3)
    resultArr[1][0] = inpArr[0]
    
    for n in 1..<tc {
        resultArr[0][n] = max(max(resultArr[0][n-1],resultArr[1][n-1]),resultArr[2][n-1])
        resultArr[1][n] = resultArr[0][n-1] + inpArr[n]
        resultArr[2][n] = resultArr[1][n-1] + inpArr[n]
    }
    let result = max(max(resultArr[0][tc-1],resultArr[1][tc-1]),resultArr[2][tc-1])
    print(result)
}
