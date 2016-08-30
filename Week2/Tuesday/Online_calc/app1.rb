require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative("lib/calc.rb")
require_relative("lib/memory_saver.rb")

memory =  MemorySaver.new
calc = Calculator.new

get "/" do
  @memory_number = memory.load
	erb(:home)
end

get "/add" do
  erb(:add)
end


post "/calculate" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
#   "The addition of #{first} and #{second} is #{result}."
# end
  if params[:operation] == "addition"
    @result = my_calculator.add(first,second)
  elsif params[:operation] == "subtraction"
    @result = my_calculator.subtract(first,second)
  elsif params[:operation] == "multiplication"
    @result = my_calculator.multiply(first,second)
  elsif params[:operation] == "division"
    @result = my_calculator.divide(first,second)
  end

  erb(:results)
end

post "/save_to_memory" do
my_memory.save(params[:result])

redirect to("/")
end


# post "/calculate_add" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first + second
#   "The addition of #{first} and #{second} is #{result}."
# end

# post "/calculate_subtract" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first - second
#   "The subtraction of #{first} and #{second} is #{result}."
# end

# post "/calculate_multiply" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first * second
#   "The multiplication of #{first} and #{second} is #{result}."
# end

# post "/calculate_divide" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = first / second
#   "The division of #{first} and #{second} is #{result}."
# end
