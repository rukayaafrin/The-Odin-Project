require_relative '../sub_string'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe '#sub_string' do
  let(:dictionary) { ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] }

  describe 'basic functionality' do
    it 'finds a single word in the string' do
      expect(sub_string("below", dictionary)).to eq({"below" => 1, "low" => 1})
    end

    it 'finds multiple occurrences of words' do
      expect(sub_string("Howdy partner, sit down! How's it going?", dictionary)).to eq({
        "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1
      })
    end
  end

  describe 'edge cases' do
    it 'handles an empty string' do
      expect(sub_string("", dictionary)).to eq({})
    end

    it 'handles an empty dictionary' do
      expect(sub_string("hello world", [])).to eq({})
    end

    it 'handles no matches' do
      expect(sub_string("hello world", ["bye"])).to eq({})
    end
  end

  describe 'complex cases' do
    it 'handles overlapping words' do
      expect(sub_string("belowdown", dictionary)).to eq({"below" => 1, "low" => 1, "down" => 1, "own" => 1})
    end

    it 'handles case sensitivity' do
      expect(sub_string("Hello World", ["hello", "world"])).to eq({"hello" => 1, "world" => 1})
    end

    it 'handles punctuation' do
      expect(sub_string("hello, world!", ["hello", "world"])).to eq({"hello" => 1, "world" => 1})
    end
  end
end