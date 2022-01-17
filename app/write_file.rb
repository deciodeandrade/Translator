module WriteFile
    def self.write_2_texts name_file, text1, text2, path = './files'
        File.open("#{path}/#{name_file}", 'w') do |line|
            line.puts(text1)
            line.puts
            line.puts(text2)
        end
    end
end