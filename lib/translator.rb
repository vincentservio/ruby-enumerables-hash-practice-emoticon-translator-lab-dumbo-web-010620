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

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  library = load_library(file_path)
  if library["get_emoticon"].include?(english_emoticon) 
    library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
  # code goes here


def get_english_meaning
  # code goes here
end