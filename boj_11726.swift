func boj11726(){
    let inp = Int(readLine()!)!
    var num1 = 1
    var num2 = 2
    var sum = 0
    if inp == 1 {
        print("1")
    }
    else if inp == 2{
        print("2")
    }
    else{
        for _ in 3...inp{
            sum = ((num1%10007)+(num2%10007))%10007
            num1 = num2
            num2 = sum
        }
        print(sum)
    }
}
