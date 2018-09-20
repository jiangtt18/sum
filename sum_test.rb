require './sum.rb'

def print_test(test_name, actual, expected)
  if actual === expected
    p "Passed! #{test_name}"
  else
    p "Failed! shoud return #{expected}, but get #{actual}"
  end
end

no_Num = "I don't have any numbers
  you dont' have numbers"

with_Num = "this is great 90 but also 20 bad
hello, temperature is 110F
I spent 100 this month and 20 last month"

empty = ""

with_and_without_num = "this is great 90 but also 20 bad
hello, temperature is 110F
I don't have any numbers
I spent 100 this month and 20 last month
"

print_test("should return empty when no lines is given", sum_up(empty), "")
print_test("shoud return empty string when no num is found",sum_up(no_Num),"\n")
print_test("should return sum of numbers for each line",sum_up(with_Num),"110\n110\n120")
print_test("should return sum and empty for lines",sum_up(with_and_without_num), "110\n110\n\n120")
