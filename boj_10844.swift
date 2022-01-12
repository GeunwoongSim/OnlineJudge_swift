func boj10844(){
    
    var arr: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: 10), count: 101)
    arr[1][0...9] = [0,1,1,1,1,1,1,1,1,1]
    
    for N in 2...100 {
        arr[N][0] = arr[N-1][1]
        arr[N][9] = arr[N-1][8]
        for M in 1...8 {
            arr[N][M] = ((arr[N-1][M-1]%1000000000) + (arr[N-1][M+1]%1000000000))%1000000000
        }
    }
    let inp = Int(readLine()!)!
    var sum = 0
    for N in 0...9 {
        sum += arr[inp][N]
    }
    print(sum%1000000000)
}
