input_num = ARGV[0].to_i
i = 1

for i in 1..input_num do
  if i%15 == 0
    puts "FizzBuzz"
  elsif i%5 == 0
    puts "Buzz"
  elsif i%3 == 0
    puts "Fizz"
  else
    puts i
  end
  i += 1
end
