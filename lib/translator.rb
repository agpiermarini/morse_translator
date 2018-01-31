class Translator
  attr_reader :dictionary

  attr_accessor :input,
                :output

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
        @input = nil
        @output = nil
  end

  def eng_to_morse(string)
      @input = []
      @output = []

      @input = string.downcase.split("")

      @input.each do | letter |
          @dictionary.each do |key, value|
             @output << value if letter == key
          end
      end

      @output.join("")
  end

  def from_file(filename)
      @input = []
      @output = []

      text_in_file = ""

      File.open(filename).each { | text | text_in_file << text }

      @input = text_in_file.downcase.split("")

      @input.each do | letter |
          @dictionary.each do |key, value|
             @output << value if letter == key
          end
      end

      @output.join("")
  end

  def morse_to_eng(string)
      @input = []
      @output = []

      @input = string.split(" ")

      @input.each do | element |
          @dictionary.select do |key, value|
             @output << key[value] if element == value
          end
      end

      @output.join("")

  end
end
