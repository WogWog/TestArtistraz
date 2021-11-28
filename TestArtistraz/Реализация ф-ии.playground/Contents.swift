import UIKit


var nums = [1,2,3,4,5,6,7]

func rotate1(_ nums: inout[Int], _ k: Int) {
    var k = k % nums.count
    var arr = nums
    while k != 0 {
        
        let newElement = arr.remove(at: arr.count - 1)
        arr.insert(newElement, at: 0)
        k = k - 1
    }
        nums = arr
}



rotate1(&nums, 3)


var nums2 = [1,2,3,4,5,6,7]

func rotate2(_ nums2: inout[Int], _ k: Int) {
    let k = k % nums2.count
    reverse(&nums2, 0, nums2.count - 1)
    reverse(&nums2, 0, k - 1)
    reverse(&nums2, k, nums2.count - 1)

func reverse(_ nums2: inout[Int], _ first: Int, _ last: Int) {
    var first = first
    var last = last
    while first < last {
        nums2.swapAt(first, last)
        first += 1
        last -= 1
        }
    }
}

rotate2(&nums2, 3)


var nums3 = [1,2,3,4,5,6,7]
func rotate3(_ nums3: inout[Int], _ k: Int){
    let k = k % nums3.count
    var newMassive = nums3
    
    for i in 0 ..< nums3.count{
        newMassive[(i + k) % nums3.count] = nums3[i]
    }
    nums3 = newMassive
}

rotate3(&nums3, 3)


var nums4 = [1,2,3,4,5,6,7]
func rotate4(_ nums4: inout[Int], _ k: Int){
    let k = k % nums4.count
    nums4 = Array(nums4[(nums4.count - k)...] + Array(nums4[..<(nums4.count - k)]))
}

rotate4(&nums4, 3)
