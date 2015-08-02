require 'pry'

def languages
  languages = {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }

    }
  }
end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, languages|
    languages.each do |language, type|
      new_hash[language] = type; new_hash[language][:style] = [style]
      type[:style] << :oo if style == :functional && language == :javascript
    end
  end
  new_hash
end