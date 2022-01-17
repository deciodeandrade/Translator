class TranslatorController
    require './app/request_microsoft_api'
    require './app/write_file'

    def create original_text, from_language, to_language
        translated_text = RequestMicrosoftApi::translate(original_text, from_language, to_language)
        WriteFile::write_2_texts(name_file, original_text, translated_text)
    end

    private

    def name_file
        time = Time.now
        "#{time.strftime('%d-%m-%y_%H:%M')}.txt"
    end
end