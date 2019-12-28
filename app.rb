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
    @value.times do
      "#{params[:phrase]}""
    end 
  end
  
  
end