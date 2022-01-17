func boj11055(){
    let tc = Int(readLine()!)!
    let inp: [Int] = readLine()!.split(separator: " ").map{
        Int($0)!
    }
    var resultArr: [Int] = [Int](repeating: 0, count: tc)
    var result: Int = inp[0]
    for i in 0..<tc {
        resultArr[i] = inp[i]
        for l in 0..<i {
            if inp[i] > inp[l] { //연결
                let temp = resultArr[l] + inp[i]
                if temp >= resultArr[i] {
                    resultArr[i] = temp
                }
                if result < resultArr[i] {
                    result = resultArr[i]
                }
            }
        }
    }
    print(result)
    
}
