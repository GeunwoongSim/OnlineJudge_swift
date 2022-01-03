func boj1463(){
    var map = Array(repeating: 0, count: 1000001)
    map[0...4] = [0,0,1,1,2]
    for value in 5..<1000001 {
        var min = map[value-1]
        if value%3==0 { //3으로 나누어짐
            min = min>map[value/3] ? map[value/3] : min
        }
        if value%2==0 { //2로 나누어짐
            min = min>map[value/2] ? map[value/2] : min
        }
        map[value] = min+1
    }
    
    let inp = Int(readLine()!)!
    print(map[inp])
}
