
import Foundation

func boj10951(){
    while let readline = readLine() {
        let inp = readline.split(separator: " ").map{Int($0)!}
        print(inp[0]+inp[1])
    }
}
