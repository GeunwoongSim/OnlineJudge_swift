func boj8393(){
    let inp = Int(readLine()!)!
//    inp%2==0 ? print((1+inp) * (inp/2)) : print((1+inp)*(inp/2) + ((1+inp)/2)) //등차합이 더 빠름
    print(inp*(inp+1)/2)
}


