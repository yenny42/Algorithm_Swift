// 
// programmers _ Swift 풀이
// 
//  [ 크기가 작은 부분문자열 ]
//   https://school.programmers.co.kr/learn/courses/30/lessons/147355
// 
//   트러블 슈팅 블로그 : https://yy-dev.tistory.com/104
//        ㄴ dropFirst(_:)
//        ㄴ prefix(_:)
// 

import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    let pCount = p.count, tCount = t.count
    let pNum = Int(p)!
    var result = 0
    
    for i in 0 ... tCount - pCount {
        let item = t.dropFirst(i).prefix(pCount)
        print(item)
        if pNum >= Int(item)! { 
            result += 1
        }
    }
    
    return result
}