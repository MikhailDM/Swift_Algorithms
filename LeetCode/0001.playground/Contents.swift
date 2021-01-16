//MARK: - Problem
/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 You can return the answer in any order.
 */

//MARK: - Execution Timer
let executionTimer = ExecutionTimer()

//MARK: - Logic
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let lastIndex = nums.count - 1
        for startIndex in 0..<lastIndex {
            let startNum = nums[startIndex]
            for multiplyerIndex in (startIndex + 1)...lastIndex {
                let secondNum = nums[multiplyerIndex]
                guard startNum + secondNum != target else { return [startIndex, multiplyerIndex] }
            }
        }
        return []
    }
}

//MARK: - Solutions
let solution = Solution()
print(solution.twoSum([2,7,11,15], 9))
print(solution.twoSum([2,11,15,7], 9))
