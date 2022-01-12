func boj9095(){
    var result: [Int] = [Int](repeating: 0, count: 12)
    result[1...3] = [1,2,4]
    
    for n in 4...10 {
        result[n] = result[n-1] + result[n-2] + result[n-3]
    }
    
    let inp = Int(readLine()!)!
    for _ in 0..<inp {
        let value = Int(readLine()!)!
        print(result[value])
    }
}
