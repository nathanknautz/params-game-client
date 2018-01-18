require 'unirest'

print "Give me your name: "
input_name = gets.chomp
response = Unirest.get("http://localhost:3000/names_url?name=#{input_name}")
data = response.body

puts JSON.pretty_generate(data)