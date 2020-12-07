def get_num
  num = nil
  loop_out = false
  until loop_out
    print "Enter a number: "
    num = gets.chomp

    if num == num.to_i.to_s
      num = num.to_i
      loop_out = true
    elsif num == num.to_f.to_s
      num = num.to_f
      loop_out = true
    else
      puts"#{num} isn't a number silly!"
    end
  end
  return num
end

puts "Welcome to the Calculator Program!"

loop_out = false
until loop_out
  puts "Please select an operator from below:"
  puts "1. add(+)"
  puts "2. subtract(-)"
  puts "3. multiply(*)"
  puts "4. divide(/)"
  puts "5. modulo(%)"
  puts "6. exponent(^)"

  print "Chosen operator: "
  operator = gets.chomp.downcase
  case operator
  when "+", "add"
    num1 = get_num
    num2 = get_num
    puts "Adding: #{num1} + #{num2}"
    puts "Final answer: #{num1 + num2}"
    exit
  when "subtract", "-"
    num1 = get_num
    num2 = get_num
    puts "Subtracting: #{num1} - #{num2}"
    puts "Final answer: #{num1 - num2}"
    exit
  when "multiply", "*"
    num1 = get_num
    num2 = get_num
    puts "Multiplying: #{num1} * #{num2}"
    puts "Final answer: #{num1 * num2}"
    exit
  when "divide", "/"
    num1 = get_num
    num2 = get_num

    if num2 == 0
      puts "Not a number"
      exit
    end

    puts "Dividing: #{num1} / #{num2}"
    puts "Final answer: #{num1 / num2}"
    exit
  when "modulo", "%"
    num1 = get_num
    num2 = get_num
    puts "Modulating: #{num1} % #{num2}"
    puts "Final answer: #{num1 % num2}"
    exit
  when "exponent", "^"
    num1 = get_num
    num2 = get_num
    puts "Exponating: #{num1} ** #{num2}"
    puts "Final answer: #{num1 ** num2}"
    exit
  else
    puts "What do you want from me?! Try again!!"
  end
end

puts "Final answer: #{num1 ** num2}"
