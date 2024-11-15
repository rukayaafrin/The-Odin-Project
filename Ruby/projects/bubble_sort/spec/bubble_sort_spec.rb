require_relative '../bubble_sort'
RSpec.configure do |config|
  config.formatter = :documentation
end
RSpec.describe 'Bubble Sort' do 
  describe '#bubble_sort' do
    it 'sorts an array with duplicate numbers' do
      expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
    end

    it 'sorts an already sorted array' do
      expect(bubble_sort([1,2,3,4,5])).to eq([1,2,3,4,5])
    end

    it 'sorts an array in reverse order' do
      expect(bubble_sort([5,4,3,2,1])).to eq([1,2,3,4,5])
    end

    it 'sorts an array with negative numbers' do
      expect(bubble_sort([-5,4,-3,2,-1])).to eq([-5,-3,-1,2,4])
    end

    it 'handles an empty array' do
      expect(bubble_sort([])).to eq([])
    end

    it 'handles an array with one element' do
      expect(bubble_sort([1])).to eq([1])
    end

    it 'sorts an array with all same numbers' do
      expect(bubble_sort([2,2,2,2,2])).to eq([2,2,2,2,2])
    end

    it 'sorts an array with decimal numbers' do
      expect(bubble_sort([3.5, 1.2, 4.8, 2.1])).to eq([1.2, 2.1, 3.5, 4.8])
    end
  end
end
