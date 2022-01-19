
func boj1699(){
    let inp: Int = Int(readLine()!)!
    var arr: [Int] = [Int](repeating: 0, count: inp+1)
    
    for i in 1...inp {
        arr[i] = i
        var l = 1
        while l*l<=i {
            if i-l*l >= 0 {
                arr[i] = min(arr[i],arr[i-l*l]+1)
            }
            l += 1
        }
    }
    print(arr[inp])
}


