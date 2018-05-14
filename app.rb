require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end


  get "/square/:number" do
    @number = params[:number].to_i
    @square = @number * @number
    @square.to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @output = @phrase * @number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]

    case @operation

    when "add"
      @output = @number1.to_i + @number2.to_i
      "#{@output}"
    when "subtract"
      @output = @number1.to_i - @number2.to_i
      "#{@output}"
    when "multiply"
      @output = @number1.to_i * @number2.to_i
      "#{@output}"
    when "divide"
      @output = @number1.to_i / @number2.to_i
      "#{@output}"
    end
  end

end
