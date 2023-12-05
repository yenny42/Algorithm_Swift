// 
// programmers _ Swift 풀이
// 
//  [ 이상한 문자 만들기 ]
//   https://school.programmers.co.kr/learn/courses/30/lessons/12930
// 
//   트러블 슈팅 블로그 : https://yy-dev.tistory.com/85
//        ㄴ 문자열 쪼개서 배열 만들기 -> components와 split의 차이점 
//        ㄴ 배열/문자열의 인덱스 가져오기 -> enumerated()
// 

import Foundation

func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ")
    var value = ""
    
    for i in arr {
        for (j, v) in i.enumerated() {
            value.append(Int(j) % 2 == 0 ? v.uppercased() : v.lowercased())
        }
        value.append(" ")
    }
    
    value.removeLast()
    
    return value
}