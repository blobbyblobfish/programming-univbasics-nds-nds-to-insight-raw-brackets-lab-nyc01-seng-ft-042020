require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
	puts "directors_db"
  puts YAML.load(rot13.call(File.open("directors_db").read.to_s))
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

