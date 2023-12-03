// 
// programmers _ Swift 풀이
// 
//  [ 최대공약수와 최소공배수 ]
//   https://school.programmers.co.kr/learn/courses/30/lessons/12940
// 
//   트러블 슈팅 블로그 : https://yy-dev.tistory.com/81
//        ㄴ 유클리드 호제법 (최대공약수)
//        ㄴ 재귀함수 (반복문)
//        ㄴ 최소공배수 공식
// 

func gcdFunc(_ n:Int, _ m:Int) -> Int {
    if m == 0 {
        return n
    } else {
        return gcdFunc(m, n % m)
    }
}
func lcmFunc(_ n:Int, _ m:Int) -> Int {
    return (n*m) / gcdFunc(n,m)
}
func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcdFunc(n,m), lcmFunc(n,m)]
}