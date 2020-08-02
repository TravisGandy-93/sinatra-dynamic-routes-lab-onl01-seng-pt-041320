require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end 
  
  get '/square/:number' do 
    @num = params[:number].to_i
    "#{@num ** 2}"
  end 
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    "#{@phrase.times(@num - 1)}"
  end 
end