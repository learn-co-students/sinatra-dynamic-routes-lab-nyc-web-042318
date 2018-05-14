require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params["name"]
    name.reverse
  end

  get '/square/:number' do
    num = params["number"]
    "#{num.to_i * num.to_i}"

  end

  get '/say/:number/:phrase' do
    num = params["number"].to_i
    phr = params["phrase"]

    text = []

    while num >0
      text << phr
      num -= 1
    end

    "#{text.join(" ")}"

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = []
    words << params["word1"]
    words << params["word2"]
    words << params["word3"]
    words << params["word4"]
    words << params["word5"]

    "#{words.join(" ")}."

  end

  get "/:operation/:number1/:number2" do

    operation = params["operation"]
    number1 = params["number1"].to_i
    number2 =  params["number2"].to_i

    if operation == "add"
      "#{number1 + number2}"
    elsif operation == "subtract"
      "#{number1 - number2}"
    elsif operation == "multiply"
      "#{number1*number2}"
    elsif operation == "divide"
      "#{number1/number2}"
    else
    end


  end

end
