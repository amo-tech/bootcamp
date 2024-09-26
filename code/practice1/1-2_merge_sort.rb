# マージソート
#o(NlogN)

def merge_sort(arr)
  # 配列が要素1になったら分割終了
  if arr.length <= 1
    return arr
  end

  # 配列の中間地点を見つける
  mid = arr.length / 2

  # 配列を分割する(再帰呼び出し)
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..])

  # マージする
  merge(left, right)
end

def merge(left, right)
  result = []
  i = j = 0

  # 両方の配列を走査して小さい方の要素を配列に追加
  while i < left.length && j < right.length
    if left[i] < right[j]
      result << left[i]
      i += 1
    else
      result << right[j]
      j += 1
    end
  end

  # 残りの要素を追加
  result.concat(left[i..])
  result.concat(right[j..])

  result
end
