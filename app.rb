require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end
  
  get '/square/:number' do 
    @value = params[:number].to_i
    @sqr = @value * @value
    "#{@sqr}"
  end 
  
  get '/say/:number/:phrase' do
    @value = params[:number].to_i
    @str = []
    @value.times do
      @str << params[:phrase]
    end 
    @str.flatten
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @user_name = params[:name]+params[:name]+params[:name]+params[:name]+params[:name]+
    "#{@user_name}"
  end
  
end