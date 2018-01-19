require 'unirest'
solved = false

while !solved
  system "clear"
  print "Guess: "
  input_guess = gets.chomp

  response = Unirest.get(
                        "http://localhost:3000/games_url",
                        parameters: {
                                      guess: input_guess
                            }
                            )
  data = response.body

  if data["answer"] == "You got it!"
    solved = true
  end 

  puts JSON.pretty_generate(data)
  x = gets.chomp
end 
