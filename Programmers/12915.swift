// 
// programmers _ Swift 풀이
// 
//  [ 문자열 내 마음대로 정렬하기 ]
//   https://school.programmers.co.kr/learn/courses/30/lessons/12915
// 
//   트러블 슈팅 블로그 : https://yy-dev.tistory.com/113
//        ㄴ sorted(by:)
//        ㄴ index(_:offSet:)
// 

func solution(_ strings:[String], _ n:Int) -> [String] {
    
   let sortedStrings = strings.sorted {
        let index0 = $0.index($0.startIndex, offsetBy: n)
        let index1 = $1.index($1.startIndex, offsetBy: n)
        
        if $0[index0] == $1[index1] {
            return $0 < $1
        } else {
            return $0[index0] < $1[index1]
        }
    }
    
    return sortedStrings
}