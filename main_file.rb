MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

# "-. .- .--- . . -..."
# Method to decode a Morse code character
def decode_char(morse_char)
  MORSE_CODE[morse_char]
end

# Method to decode an entire word in Morse code
def decode_word(morse_word)
  morse_word.split.map { |char| decode_char(char) }.join
end

# Method to decode the entire message in Morse code
def decode_message(morse_message)
  morse_message.split('   ').map { |word| decode_word(word) }.join(' ')
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_msg = decode_message(message)
puts decoded_msg
