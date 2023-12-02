// 
// programmers _ Swift 풀이
// 
// [ 행렬의 덧셈 ]
//   https://school.programmers.co.kr/learn/courses/30/lessons/12950
// 
//   트러블 슈팅 블로그 : https://yy-dev.tistory.com/78
// 

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var result:[[Int]] = []
    
    for i in 0 ..< arr1.count {
        result.append([])
        for j in 0 ..< arr1[i].count {
            var value = arr1[i][j] + arr2[i][j]
            result[i].append(value)
        } 
    }
    
    return result
}