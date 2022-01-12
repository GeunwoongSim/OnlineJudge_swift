func boj11057(){
    var arr: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: 10), count: 1001)
    arr[1][0...9] = [1,1,1,1,1,1,1,1,1,1]
    
    for index1 in 2...1000 {
        arr[index1][0] = 1
        for index2 in 1...9 {
            arr[index1][index2] = ((arr[index1][index2-1]%10007) + (arr[index1-1][index2]%10007)%10007)
        }
    }
    
    let inp = Int(readLine()!)!
    var sum = 0
    for index1 in 0...9 {
        sum += arr[inp][index1]
    }
    print(sum%10007)
}
