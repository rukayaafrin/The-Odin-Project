require_relative '../caesar_cipher'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe 'Caesar Cipher' do 
  describe 'shift by 5' do
    it 'return "Bmfy f xywnsl!"' do
      expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end
  end

  describe 'edge cases' do
    it 'handles empty strings' do
      expect(caesar_cipher("", 5)).to eq("")
    end

    it 'handles large shifts' do
      expect(caesar_cipher("abc", 27)).to eq("bcd")  # 27 is equivalent to shift of 1
    end

    it 'handles negative shifts' do
      expect(caesar_cipher("abc", -3)).to eq("xyz")
    end
  end

  describe 'character preservation' do
    it 'preserves spaces and punctuation' do
      expect(caesar_cipher("Hello, World!", 1)).to eq("Ifmmp, Xpsme!")
    end

    it 'maintains letter case' do
      expect(caesar_cipher("AbC dEf", 1)).to eq("BcD eFg")
    end
  end

  describe 'wrapping' do
    it 'wraps from z to a' do
      expect(caesar_cipher("xyz", 3)).to eq("abc")
    end

    it 'wraps from Z to A' do
      expect(caesar_cipher("XYZ", 3)).to eq("ABC")
    end
  end
end
