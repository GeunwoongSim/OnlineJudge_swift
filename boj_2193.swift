func boj2193(){
    var arr: [[Int]] = [[Int]](repeating: [0,0], count: 91)
    arr[1][1] = 1
    
    for index in 2...90 {
        arr[index][0] = arr[index-1][0] + arr[index-1][1]
        arr[index][1] = arr[index-1][0]
    }
    let inp = Int(readLine()!)!
    print(arr[inp][0]+arr[inp][1])
}
