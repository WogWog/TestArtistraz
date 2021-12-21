# TestSwiftUI
Тестовое  приложение работы со SwiftUI
1)
Реализовать прототип приложения согласно показанному на видео
Список картинок, при нажатии на одну из них, картинка выбирается и увеличивается
При нажатии на кнопку zoom приложение переходит на следующий экран, где отображается выбранная картинка
Видео и набор картинок прилагается.
 
Фреймворк - SwiftUI
Бонусом будет соответствие  архитектуре MVVM
 
2)
Реализовать функцию, удовлетворяющую условию
 
Given an array, rotate the array to the right by k steps, where k is non-negative.
 
Example 1:
Input: nums = [1,2,3,4,5,6,7], k = 3
Output: [5,6,7,1,2,3,4]
Explanation:
rotate 1 steps to the right: [7,1,2,3,4,5,6]
rotate 2 steps to the right: [6,7,1,2,3,4,5]
rotate 3 steps to the right: [5,6,7,1,2,3,4]
Example 2:
Input: nums = [-1,-100,3,99], k = 2
Output: [3,99,-1,-100]
Explanation:
rotate 1 steps to the right: [99,-1,-100,3]
rotate 2 steps to the right: [3,99,-1,-100]
 
Constraints:
 • 1 <= nums.length <= 105
 • -231 <= nums[i] <= 231 - 1
 • 1 <= k <= 105
 
Follow up:
 • Try to come up with as many solutions as you can. There are at least three different ways to solve this problem.
 • Could you do it in-place with O(1) extra space?

Тело функции
func rotate(_ nums: inout [Int], _ k: Int) {
        
}


https://user-images.githubusercontent.com/83632297/143777227-06ffff34-b303-4d2b-bf1f-1cc13a93d8fa.mp4

