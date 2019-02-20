require 'rspec'
require_relative '../sort'

describe 'Sort' do
  it 'returns correct sort array' do
    expect(Sort::sort_by_binary([3,7,8,9])).to eq([8,3,9,7])
  end
end