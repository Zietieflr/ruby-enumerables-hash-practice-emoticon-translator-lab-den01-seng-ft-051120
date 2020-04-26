# require modules here
require "yaml";
require "pry";

def load_library(path)
  # code goes here
  library = {};
  yaml_h = YAML.load_file(path);
  yaml_h.map { |descriptor| 
    key = descriptor[0];
    value = { english: descriptor[1][0], japanese: descriptor[1][1] };
    library.store(key, value);
  }
  library; 
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  library = {};
  library = load_library(path);
  library.map { |emotion| 
    if emotion[1][:english] == emoticon
      return emotion[1][:japanese];
    end
  }
  
end

get_japanese_emoticon("lib/emoticons.yml", ":D")

def get_english_meaning
  # code goes here
end