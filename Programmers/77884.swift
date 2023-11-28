// 
// programmers _ Swift 풀이
// 
// [ 약수의 개수와 덧셈 ]
//   https://school.programmers.co.kr/learn/courses/30/lessons/77884
// 
//  트러블 슈팅 블로그 : https://yy-dev.tistory.com/68
// 

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var value: Int = 0
    for i in left ... right {
        var sqrtValue = sqrt(Double(i)).truncatingRemainder(dividingBy: 1.0)
        value += sqrtValue == 0 ? -i : i
    }
    
    return value
}