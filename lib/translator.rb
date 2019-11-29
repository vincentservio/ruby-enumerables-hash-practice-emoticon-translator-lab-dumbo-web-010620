# require modules here
  require "pry"
  require "yaml"



def load_library(filepath)
 library = YAML.load_file(filepath)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each { |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  }
  result


  # code goes here
end

def get_japanese_emoticon(filepath = './lib/emoticons.yml', english_emoticon)
 library = YAML.load_file(filepath)
  # code goes here
end

def get_english_meaning
  # code goes here
end