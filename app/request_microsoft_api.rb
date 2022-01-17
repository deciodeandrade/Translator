require 'rest-client'
require 'json'
require './credentials'

module RequestMicrosoftApi
    def self.translate text, from_language, to_language
        key = Crentials::MicrosoftApi.key_1
        region = Crentials::MicrosoftApi.region

        url = "https://api.cognitive.microsofttranslator.com/translate?api-version=3.0&from=#{from_language}&to=#{to_language}"
        headers = {
            'Content-Type': 'application/json', 
            'Ocp-Apim-Subscription-Key': key,
            'Ocp-Apim-Subscription-Region': region
        }

        response = RestClient.post(url, "[{'Text': '#{text}'}]", headers)
        JSON[response.body][0]["translations"][0]["text"]
    end
end