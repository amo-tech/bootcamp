# 線形探索法

# 入力を受け取る
N = gets.to_i
A = gets.split.map(&:to_i)


# 線形探索
exist = false
A.each do |i|
  if i == N
    exist = true
  end
end

# 結果出力
if exist == true
  puts "Yes"
else
  puts "No"
end
