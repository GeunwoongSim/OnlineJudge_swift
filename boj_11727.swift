func boj11727(){
    let inp = Int(readLine()!)!
    var arr: [Int] = [Int](repeating: 0, count: 1001)
    arr[1] = 1
    arr[2] = 3
    
    if inp >= 3{
        for n in 3...inp {
            arr[n] = ((arr[n-1]%10007) + (arr[n-2]%10007) + (arr[n-2]%10007))%10007
        }
    }
    print(arr[inp])
}
