require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end
  
  get '/square/:number' do 
    @sqr = Math.sqrt(params[:number].to_i)
    "#{@sqr}"
  end 
  
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
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
  
  
end