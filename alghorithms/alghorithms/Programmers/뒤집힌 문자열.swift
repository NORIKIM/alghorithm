func solution(_ my_string:String) -> String {
    return ((my_string.map{String($0)}).reversed()).joined()
}

// 다른 사람 풀이
func solution(_ my_string:String) -> String {
    return String(my_string.reversed())
}
