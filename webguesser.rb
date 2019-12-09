require 'sinatra'
require 'sinatra/reloader'

number = rand(100)

get '/' do
    
    guess = params["guess"].to_i
    msg = check_guess(guess,number)
    erb :index, :locals => {:number => number, :msg => msg}
end


def check_guess(guess, number)
    if guess > number + 5
        "Way too high"
    elsif guess < (number -5)
        "Way too low"
    elsif guess > number
       "Too high"
    elsif guess < number
      "Too low"
    else
         "You are correct, the number is #{number}"
    end
end