require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name}!"
  end
end


  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    @user_name = params[:name]
    "goodbye #{@user_name}!"
  end 
  
  get '/multiply/:num1/:num2' do 
    @multiply = params[:num1].to_i + params[:num2].to_i
    "#{@multiply}"
  end 
end