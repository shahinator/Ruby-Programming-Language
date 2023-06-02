# multiplication
def multiply(first_number, second_number) 
    first_number * second_number
end
# division
def division (first_number, second_number) 
    first_number / second_number
end
# addition
def addition (first_number, second_number) 
    first_number + second_number
end
# substration
def substration (first_number, second_number) 
    first_number - second_number
end
# modulo
def modulo (first_number, second_number) 
    first_number % second_number
end
puts "Simple Calculator"
puts "="*30
puts "Enter your First Number"
x= gets.chomp.to_f
puts "Enter your Second Number"
y= gets.chomp.to_f
puts "Your two number multiplication is #{multiply(x,y)}"
puts "Your two number division is #{division(x,y)}"
puts "Your two number addition is #{addition(x,y)}"
puts "Your two number addition is #{substration(x,y)}"
puts "Your two number addition is #{modulo(x,y)}"
