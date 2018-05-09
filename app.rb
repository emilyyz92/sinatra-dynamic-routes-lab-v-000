require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    "My name in reverse is #{params[:name].reverse}"
  end

  get "/square/:number" do
    a = params[:number].to_i
    "The square result is #{a**2}"
  end

  get "/say/:number/:phrase" do
    n = params[:number].to_i
    a = ""
    n.times do
      a += "#{params[:phrase]}\n"
    end
    a
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    a = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
    puts "#{a}."
  end

end
