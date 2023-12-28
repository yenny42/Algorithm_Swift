// 
// programmers _ Swift 풀이
// 
//  [ 숫자 문자열과 영단어 ]
//   https://school.programmers.co.kr/learn/courses/30/lessons/81301
// 
//   트러블 슈팅 블로그 : https://yy-dev.tistory.com/109
//        ㄴ 문자열 대체 replacingOccurrences(of:with:)
// 

import Foundation

func solution(_ s: String) -> Int {
    
    let numbers = [ "zero" : "0", "one" : "1", "two" : "2", "three" : "3", "four" : "4", "five" : "5", "six" : "6", "seven" : "7", "eight" : "8", "nine" : "9" ]
    var result = s

    for num in numbers {
        result = result.replacingOccurrences(of: num.key, with: num.value)
    }

    return Int(result)!
}