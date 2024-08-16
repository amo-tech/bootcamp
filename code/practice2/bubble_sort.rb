#バブルソート

#左右を比較、小さい方を左に移動させる
# indexが0,1、1,2で比較していく
# 並び変え終わるまで続けるo(n*2)

arr = [6, 15, 4, 2, 8, 5, 11, 9, 7, 13]

def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false
    (n-1).times do|i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

# puts bubble_sort(arr)