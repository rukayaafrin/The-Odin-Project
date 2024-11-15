require_relative '../stock_picker'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe '#stock_picker' do
  describe 'basic functionality' do
    it 'returns the most profitable pair of days' do
      expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
    end

    it 'handles a simple ascending sequence' do
      expect(stock_picker([1,2,3,4,5])).to eq([0,4])
    end

    it 'handles a simple descending sequence' do
      expect(stock_picker([5,4,3,2,1])).to eq([])  # No profit possible
    end
  end

  describe 'edge cases' do
    it 'handles an empty array' do
      expect(stock_picker([])).to eq([])
    end

    it 'handles an array with one element' do
      expect(stock_picker([1])).to eq([])
    end

    it 'handles an array with all same values' do
      expect(stock_picker([4,4,4,4])).to eq([])
    end
  end

  describe 'complex cases' do
    it 'finds best profit when lowest day is not the buy day' do
      expect(stock_picker([3,8,1,5,6])).to eq([[2,4],[0,1]])  # Buy at 3, sell at 8 (profit 5) is better than buy at 1, sell at 6 (profit 5)
    end

    it 'handles multiple peaks and valleys' do
      expect(stock_picker([10,2,5,1,9,4,7])).to eq([3,4])
    end

    it 'handles negative numbers' do
      expect(stock_picker([-5,-2,-8,-1])).to eq([2,3])
    end
  end
end
