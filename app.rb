require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name].reverse
    "#{name}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    square = num * num
    square.to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase].split("-").join

      "#{phrase}" * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]

    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]

    case operation
    when "add"
      (num1 + num2).to_s
    when "subtract"
      (num1 - num2).to_s
    when "multiply"
      (num1 * num2).to_s
    when "divide"
      (num1 / num2).to_s
    else
      resp.status = 404
    end
  end

end
