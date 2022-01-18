func boj1912(){
    let tc = Int(readLine()!)!
    let inp = readLine()!.split(separator: " ").map{
        Int($0)!
    }
    if tc == 1 {
        print(inp[0])
    }
    else{
        var arr: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: tc), count: 2)
        
        arr[0][0] = inp[0]
        arr[0][1] = inp[0] + inp[1]
        arr[1][1] = inp[1]
        for i in 2..<tc {
            arr[0][i] = max(arr[0][i-1],arr[1][i-1]) + inp[i]
            arr[1][i] = max(min(arr[0][i-1],arr[1][i-1]) + inp[i], inp[i])
        }
        var result: Int = max(max(arr[0][0],arr[0][1]),arr[1][1])
        for i in 2..<tc {
            let temp = max(arr[0][i], arr[1][i])
            result = max(result, temp)
        }
        print(result)
    }
}
