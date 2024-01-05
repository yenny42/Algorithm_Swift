// 
// programmers _ Swift 풀이
// 
//  [ 두 개 뽑아서 더하기 ]
//   https://school.programmers.co.kr/learn/courses/30/lessons/68644
// 
//   트러블 슈팅 블로그 : https://yy-dev.tistory.com/119
//        ㄴ sorted()
//        ㄴ 집합
// 

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var resultArr: [Int] = []

    for i in 0 ..< numbers.count {
       for j in i ..< numbers.count {
           if i != j {
               resultArr.append(numbers[j] + numbers[i])
           }
       } 
    }
    
    resultArr = Array(Set(resultArr)).sorted(by: <)
    
    return resultArr
}
