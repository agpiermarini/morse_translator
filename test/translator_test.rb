require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/translator"

class TranslatorTest < Minitest::Test

    def test_it_can_be_created
        translator = Translator.new
        assert_equal Translator, translator.class
    end

    def test_it_can_convert_english_to_morse
        translator = Translator.new
        assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    end

    def test_it_can_convert_from_file
        translator = Translator.new
        assert_equal "......-...-..--- .-----.-..-..-..", translator.from_file("test.txt")
    end

    # def test_it_can_convert_morse_to_english
    #     translator = Translator.new
    #     binding.pry
    #     assert_equal "hello world", translator.eng_to_morse(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
    # end

end
