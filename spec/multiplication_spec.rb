require 'rspec'
require_relative '../multiplication'

describe 'module Multiplication' do
  describe '#string?' do
    context 'when value is string' do
      it 'returns true' do
        expect(Multiplication.string?('test_string')).to be_truthy
      end
    end

    context 'when value is not string' do
      it 'returns false' do
        expect(Multiplication.string?(2584)).to be_falsey
      end
    end
  end

  describe '#correct_combination?' do
    context 'when the value include only numbers' do
      it 'returns true' do
        expect(Multiplication.correct_combination?('2548')).to be_truthy
      end
    end

    context 'when the value includes letters' do
      it 'returns false' do
        expect(Multiplication.correct_combination?('2a48')).to be_falsey
      end
    end
  end

  describe '#combinations' do
    context 'when string include valid combinations' do
      it 'returns an array with values containing only digits' do
        expect(Multiplication.combinations('abc12345def')).to eq(['1234', '2345'])
      end
    end

    context 'when string include invalid combinations' do
      it 'returns empty array' do
        expect(Multiplication.combinations('abcd12ef345')).to eq([])
      end
    end
  end

  describe '#multiplication' do
    it 'checks correct multiplication' do
      expect(Multiplication.multiplication(['1234', '5678'])).to eq([24, 1680])
    end
  end

  describe '#max_multiplication' do
    it 'returns max multiplication value' do
      expect(Multiplication.max_multiplication('abc12345def')).to eq(120)
    end
  end
end
