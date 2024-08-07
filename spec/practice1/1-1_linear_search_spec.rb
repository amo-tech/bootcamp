require 'rspec'
require_relative '../../code/practice1/1-1_linear_search.rb'

RSpec.describe '#liner_search' do
  it '配列に任意の要素があるときは"Yes"と返す ' do
    N = 5
    A = [3, 11, 6, 9, 21, 5, 2]
    expect{ linear_search(N, A) }.to output("Yes\n").to_stdout
  end
  it '配列に任意の要素がないときは"No"と返す' do
    N = 5
    A = [8, 11, 6, 30, 2, 8, 15]
    expect{ linear_search(N, A) }.to output("No\n").to_stdout
  end
end

