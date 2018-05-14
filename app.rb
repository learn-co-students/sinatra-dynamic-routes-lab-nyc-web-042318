require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num**2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase*@number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    space = " "
    return "#{@word1 + space + @word2 + space + @word3 + space + @word4 + space + @word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    ops = ''
    if @operation == 'add'
      "#{@number1 + @number2}"
    elsif @operation == 'subtract'
      "#{@number1 - @number2}"
    elsif @operation == 'multiply'
      "#{@number1 * @number2}"
    else @operation == 'divide'
      "#{@number1 / @number2}"
    end
  end

end
