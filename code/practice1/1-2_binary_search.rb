
# 入力を受け取る
N = gets.to_i
# 数字は昇順になっているものとする 8 [3, 5, 8, 10, 14, 17, 21, 39]
A = gets.split.map(&:to_i)


# 二分探索
def binary_search(target, arr)
  left = 0
  right = arr.length - 1
  while left <= right
    mid = (left + right) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      left = mid + 1
    elsif arr[mid] > target
      right = mid - 1
    end
  end
  # 存在しないとき
  return -1
end

result = binary_search(N, A)
puts result