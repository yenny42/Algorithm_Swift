// 
// programmers _ Swift 풀이
// 
//  [ 3진법 뒤집기 ]
//   https://school.programmers.co.kr/learn/courses/30/lessons/68935
// 
//   트러블 슈팅 블로그 : https://yy-dev.tistory.com/83
//        ㄴ 진수 변환 init(_:radix:)
// 

import Foundation

func solution(_ n:Int) -> Int {
    
    let value = String(n, radix: 3)
    let reversedValue = String(value.reversed())
    let result = Int(reversedValue, radix: 3)!
    
    return result
}