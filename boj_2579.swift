func boj2579(){
    let tc: Int = Int(readLine()!)!
    
    var inp: [Int] = [Int](repeating: 0, count: tc+1)
    var arr: [[Int]] = [[Int]](repeating:[Int](repeating: 0, count: tc+1), count:2)
    for i in 1...tc {
        let num = Int(readLine()!)!
        inp[i] = num
    }
    
    if tc == 1 {
        print(inp[1])
    }else{
        arr[0][1] = inp[1]
        arr[1][1] = inp[1]
        
        for i in 2...tc {
            arr[0][i] = arr[1][i-1] + inp[i]
            arr[1][i] = max(arr[0][i-2],arr[1][i-2]) + inp[i]
        }
        let result = max(arr[0][tc],arr[1][tc])
        print(result)
    }
}
