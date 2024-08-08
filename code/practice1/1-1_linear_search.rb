
# 入力を受け取る
N = gets.to_i
A = gets.split.map(&:to_i)


# 線形探索
def linear_search(target, array)
  exist = false
  A.each do |i|
    if i == target
      exist = true
      break
    end
  end
  # 結果出力
  if exist
    puts "Yes"
  else
    puts "No"
  end
end

linear_search(N, A)