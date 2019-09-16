require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
  @name = params[:name].reverse 
  "#{@name}"
end

  get "/square/:number" do 
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get "/say/:number/:phrase" do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @whole = @phrase * @number
    "#{@whole}"
  end
  
  # Write your code here!
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @whole = params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] + '.'
    "#{@whole}"
  end

  get "/:operation/:number1/:number2" do 
    if params[:operation] == 'add'
      @total = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == 'multiply'
      @total = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == 'subtract'
      @total = params[:number2].to_i - params[:number1].to_i
    else
      @total = params[:number1].to_i/params[:number2].to_i
    end
    "#{@total}"
  end

end