
# 盤面を出力する
def print_board(size)
  size.times do |x|
    puts "N" * size
  end
end

# size = 3
# print_board(size)

# 三目並べの勝利判定メソッド
# CUIでプレイヤーの手を受け取る入力メソッド
# ゲーム板の更新メソッド
# ゲームの終了を判定するメソッド