
# 入力を受け取る
N = gets.to_i
A = gets.split.map(&:to_i)


# 線形探索
def linerserech
  exist = false
  A.each do |i|
    if i == N
      exist = true
      break
    end
  end
  # 結果出力
  if exist == true
    puts "Yes"
  else
    puts "No"
  end
end

linerserech