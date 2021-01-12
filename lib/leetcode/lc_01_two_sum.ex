defmodule InterviewPrep.LC01TwoSum do
  @moduledoc """
  https://leetcode.com/problems/two-sum/

  Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

  You may assume that each input would have exactly one solution, and you may not use the same element twice.

  You can return the answer in any order.



  Example 1:

  Input: nums = [2,7,11,15], target = 9
  Output: [0,1]
  Output: Because nums[0] + nums[1] == 9, we return [0, 1].

  Example 2:

  Input: nums = [3,2,4], target = 6
  Output: [1,2]

  Example 3:

  Input: nums = [3,3], target = 6
  Output: [0,1]



  Constraints:

      2 <= nums.length <= 103
      -109 <= nums[i] <= 109
      -109 <= target <= 109
      Only one valid answer exists.
  """

  @doc """
  ## Examples

      iex> InterviewPrep.LC01TwoSum.two_sum([2, 7, 11, 15], 9) |> Enum.sort
      [0, 1]
      iex> InterviewPrep.LC01TwoSum.two_sum([3, 2, 4], 6) |> Enum.sort
      [1, 2]
      iex> InterviewPrep.LC01TwoSum.two_sum([3, 3], 6) |> Enum.sort
      [0, 1]
  """
  def two_sum(nums, target) do
    seen = %{}
    index = 0
    two_sum(nums, target, seen, index)
  end
  def two_sum([num | rem_nums], target, %{} = seen, index) do
    if num do
      complement = target - num
      if seen[complement] do
        [index, seen[complement]]
      else
        two_sum(
          rem_nums,
          target,
          Map.put(seen, num, index),
          index + 1
        )
      end
    end
  end
end
