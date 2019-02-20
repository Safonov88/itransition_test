require 'rspec'
require_relative '../sort'

describe 'module Sort' do
  describe '#sort_by_binary' do
    context 'when all value is positive' do
      it 'sorts array' do
        expect(Sort.sort_by_binary([3,7,8,9])).to eq([8,3,9,7])
      end
    end

    context 'when value is negative' do
      it 'sorts array' do
        expect(Sort.sort_by_binary([-3,7,-8,9])).to eq([-8,-3,9,7])
      end
    end
  end
end
