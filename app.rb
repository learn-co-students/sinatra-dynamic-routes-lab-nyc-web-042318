require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @reversed_name = @name.reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase} " * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]

    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    if @operation == "add"
        @sum = @number_1 + @number_2
        "#{@sum}"
    elsif @operation == "subtract"
        @result = @number_1 - @number_2
        "#{@result}"
    elsif @operation == "multiply"
        @result = @number_1 * @number_2
        "#{@result}"
    elsif @operation == "divide"
        @result = @number_1 / @number_2
        "#{@result}"
    end
  end


end
