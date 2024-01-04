// 
// programmers _ Swift 풀이
// 
//  [ K번째수 ]
//   https://school.programmers.co.kr/learn/courses/30/lessons/42748
// 
//   트러블 슈팅 블로그 : https://yy-dev.tistory.com/115
//        ㄴ sorted(by:)
//        ㄴ 범위 연산자
// 

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var resultArr: [Int] = []
    var index0: Int = 0
    var index1: Int = 0
    var index2: Int = 0
    
    for i in 0 ..< commands.count {
        index0 = commands[i][0]
        index1 = commands[i][1]
        index2 = commands[i][2]
        
        resultArr.append(array[index0 - 1 ..< index1].sorted(by: <)[index2 - 1]) 
    }
    
    return resultArr
}