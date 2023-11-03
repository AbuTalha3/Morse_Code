# Define a Morse code dictionary
morse_code_dict = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
  'F' => '..-.', 'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---',
  'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---',
  'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
  'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--',
  'Z' => '--..', '0' => '-----', '1' => '.----', '2' => '..---', '3' => '...--',
  '4' => '....-', '5' => '.....', '6' => '-....', '7' => '--...', '8' => '---..',
  '9' => '----.', '/' => ' '
}

# Method to translate Morse code to English
def morse_code_to_english(morse_code, morse_code_dict)
  english_words = morse_code.split(' / ')
  translated_message = []

  english_words.each do |word|
    letters = word.split
    translated_word = letters.map { |letter| morse_code_dict.key(letter) }.join
    translated_message << translated_word
  end

  translated_message.join(' ')
end

# Get user input and translate Morse code to English
puts 'Enter Morse code (use "." for dot and "-" for dash, separate letters with space, and words with "/"):'
morse_code_input = gets.chomp
result = morse_code_to_english('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

puts "Translated message: #{result}"
