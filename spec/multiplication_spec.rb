require 'rspec'
require_relative '../multiplication'

describe 'module Multiplication' do
  describe '#max_multiplication' do
    it 'returns max multiplication value' do
      expect(Multiplication.max_multiplication('abc12345def')).to eq(120)
    end

    context 'when value is not include digists' do
      it 'returns nil' do
        expect(Multiplication.max_multiplication('abcdefghijk')).to be_nil
      end
    end

    context 'when value is not string' do
      it 'returns nil' do
        expect(Multiplication.max_multiplication(123456789)).to be_nil
      end
    end
  end
end
