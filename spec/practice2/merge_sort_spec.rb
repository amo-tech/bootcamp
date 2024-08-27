require 'rspec'
require_relative '../../code/practice2/merge_sort.rb'

RSpec.describe '#merge_sort' do
    it '正しくソートされること ' do
      arr = [6, 15, 4, 2, 8, 5, 11, 9, 7, 13]
      expect(merge_sort(arr)).to match_array [2, 4, 5, 6, 7, 8, 9, 11, 13, 15]
    end

    it '要素がすべて同じでも正常終了すること' do
      arr = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
      expect(merge_sort(arr)).to match_array [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    end

    it '負の数が含まれていても並べ変わる' do
      arr = [3, -11, 8, 11, -1, 4, 6, 13, -5, 9, 17, 0]
      expect(merge_sort(arr)).to match_array [-11, -5, -1, 0, 3, 4, 6, 8, 9, 11, 13, 17]
    end
end