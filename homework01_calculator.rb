
# Define the function to enter numbet------------------------------------

def get_number(item)
  begin
    if item == "1"
      puts "Please enter the first number:"
    else
      puts "Please enter the second number:"
    end
    number = Float(gets.chomp)
    puts ""
    rescue ArgumentError
    puts "This is not a number, try again!\n"
    retry
  end
  return number
end

# Define the function to get operator------------------------------------

def get_operator
  begin
    puts "Please choice the operator:"
    puts "1: add \n2: substract \n3: multiply \n4: divide"
    operator = gets.chomp.to_i
  end while ![1,2,3,4].include?(operator)
  return operator
end

# Define the operation for two numbers-----------------------------------

def operation(operator, num1, num2)
  case operator  
  when 1 
    puts "The operational result is: #{num1.to_f + num2.to_f}"
    puts "==> #{num1.to_s} + #{num2.to_s} = #{num1.to_f + num2.to_f}"
  when 2 
    puts "The operational result is: #{num1.to_f - num2.to_f}"
    puts "==> #{num1.to_s} - #{num2.to_s} = #{num1.to_f - num2.to_f}"
  when 3
    puts "The operational result is: #{num1.to_f * num2.to_f}"
    puts "==> #{num1.to_s} * #{num2.to_s} = #{num1.to_f * num2.to_f}"
  else
    puts "The operational result is: #{num1.to_f / num2.to_f}"
    puts "==> #{num1.to_s} / #{num2.to_s} = #{num1.to_f / num2.to_f}"
  end
end

# The Main program of simple calculator----------------------------------

system "clear"

puts "Welcome to simple calculator! (for two numbers)"
puts ""

item = "1"
num1 = get_number(item)

item = "2"
num2 = get_number(item)

operator = get_operator()
puts ""

operation(operator, num1, num2)
puts ""

















