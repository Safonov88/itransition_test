require 'rspec'
require_relative '../multiplication'

describe 'module Multiplication' do
  describe '#string?' do
    context 'when value is string' do
      it 'returns true' do
        expect(Multiplication::string?('test_string')).to be_truthy
      end
    end

    context 'when value is not string' do
      it 'returns false' do
        expect(Multiplication::string?(2584)).to be_falsey
      end
    end
  end

  describe '#correct_combination?' do
    context 'when the value include only numbers' do
      it 'returns true' do
        expect(Multiplication::correct_combination?('2548')).to be_truthy
      end
    end

    context 'when the value includes letters' do
      it 'returns false' do
        expect(Multiplication::correct_combination?('2a48')).to be_falsey
      end
    end
  end
end
