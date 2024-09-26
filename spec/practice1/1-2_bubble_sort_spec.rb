require 'rspec'
require_relative '../../code/practice2/bubble_sort.rb'

RSpec.describe '#bubble_sort' do
  it '配列が昇順で並べ変わること' do
    arr = [6, 2, 4, 11, 23, 1, 7, 15, 8]
    expect(bubble_sort(arr)).to match_array [1, 2, 4, 6, 7, 8, 11, 15, 23]
  end

  it 'すべて同じ数の時でも正常終了する' do
    arr = [1, 1, 1, 1, 1, 1, 1, 1]
    expect(bubble_sort(arr)).to match_array [1, 1, 1, 1, 1, 1, 1, 1]
  end

  it '負の数も並び替えられる' do
    arr = [6, -2, 4, 11, 0, 1, 7, 15, -8]
    expect(bubble_sort(arr)).to match_array [-8, -2, 0, 1, 4, 6, 7, 11, 15]
  end
end