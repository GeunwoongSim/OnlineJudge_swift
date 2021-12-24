
func boj1924(){
    let Mon: [Int] = [0,31,59,90,120,151,181,212,243,273,304,334]
    let Day: [String] = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    let inp = readLine()!.split(separator: " ").map{ Int($0)! } // [0]: Mon, [1]: Day
    var sum: Int = Mon[inp[0]-1] + inp[1]
    sum = sum % 7
    print(Day[sum])
}
