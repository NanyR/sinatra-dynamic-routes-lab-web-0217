require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name= params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num= params[:number].to_i
    "#{(@num ** 2).to_s}"
  end

  get '/say/:number/:phrase' do
    @num=params[:number].to_i
    @phrase= params[:phrase]
    @phrase+= "\n"
    "#{@phrase * @num}"

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1=params[:word1]
    @word_2=params[:word2]
    @word_3=params[:word3]
    @word_4=params[:word4]
    @word_5=params[:word5]
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get '/:operation/:number1/:number2' do
    @operation= params[:operation]
    @num1=params[:number1].to_i
    @num2=params[:number2].to_i
    "#{result=case @operation
  when 'add'
    @num1 + @num2
  when 'subtract'
    @num1-@num2
  when 'multiply'
    @num1 * @num2
  when 'divide'
    @num1 / @num2
  end.to_s
    }"
  end



end
