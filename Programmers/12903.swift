// 
// programmers _ Swift 풀이
// 
// 제목 : 가운데 글자 가져오기
// https://school.programmers.co.kr/learn/courses/30/lessons/12903
// 
// 트러블슈팅 : https://yy-dev.tistory.com/65
// 

func solution(_ s:String) -> String {
    let arr = Array(s)
    let count = s.count
    var result: String
    
    count % 2 != 0 ? (result = "\(arr[count/2])") : (result = "\(arr[count/2 - 1])\(arr[count/2])")
    
    return result
}