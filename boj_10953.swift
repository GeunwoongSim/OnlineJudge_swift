
import Foundation

func boj10953(){
    let TC = Int(readLine()!)!
    for _ in 0..<TC {
        let inp = readLine()!.split(separator: ",").map{
            Int($0)!
        }
        print(inp[0]+inp[1])
    }
}
