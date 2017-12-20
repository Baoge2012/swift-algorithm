func findOutlier(_ array: [Int]) -> Int {
    let firstOdd = (array.first)!%2 == 0
    let secondOdd = (array[1])%2 == 0
    
    var ret = 0
    
    if firstOdd == secondOdd {
        for i in 2..<array.count {
            let isOdd = (array[i]%2) == 0
            if firstOdd != isOdd {
                ret = array[i]
                break
            }
        }
    } else {
        let isOdd = (array[2])%2 == 0
        if firstOdd == isOdd {
            ret = array[1]
        } else {
            ret = array[0]
        }
    }
    return ret
}
