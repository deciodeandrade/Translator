require './app/translator_controller'

translator = TranslatorController.new
puts("Texto: ")
text = gets.chomp
translator.create(text, 'pt-br', 'en')