=begin
with a left shift of 3, D would be replaced by A, E would become B, and so on.
> caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
=end

def caesar_cipher(message, shift)
  result = message.split('').map do |char|
    if char.match?(/[A-Za-z]/)
      ascii = char.ord
      base = char.match?(/[a-z]/) ? 97 : 65
      new_ascii = ((ascii - base + shift) % 26) + base
      new_ascii.chr
    else
      char
    end
  end
  result.join
end
