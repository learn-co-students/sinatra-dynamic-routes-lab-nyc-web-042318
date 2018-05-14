require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    reversename = @name.reverse
    "#{reversename}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    square = @number*@number
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    return "#{@phrase * @number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    # :operation ==> add, subtract, multiply, divide
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      total = @number1 + @number2
      "#{total}"
    elsif @operation == "subtract"
      total = @number1 - @number2
      "#{total}"
    elsif @operation == "multiply"
      product = @number1 * @number2
      "#{product}"
    elsif @operation == "divide"
      division = @number1/@number2
      "#{division}"
    end
  end

end
