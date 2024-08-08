require 'rspec'
require_relative '../../code/practice1/1-1_binary_search.rb'

RSpec.describe '#binary_search' do
  it '配列に任意の要素があるときは配列のindexを返す' do
    N = 8
    A = [3, 5, 8, 10, 14, 17, 21, 39]
    expect(binary_search(N, A)).to eq(2)
  end

  it '配列に任意の要素がないときは-1を返す' do
    N = 9
    A = [3, 5, 8, 10, 14, 17, 21, 39]
    expect(binary_search(N, A)).to eq(-1)
  end
end