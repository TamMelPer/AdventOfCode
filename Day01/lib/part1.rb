# Find the two entries in the list of expenses that sum to 2020
# and then multiply those two numbers together

def find_sum_2020_multiplied(entries)
  entries_array = entries.gsub("\n",", ").split(", ").map(&:to_i)
  result = entries_array.combination(2).find_all { |a, b| a + b == 2020 }
  result.flatten.inject(:*)
end

def find_three_sum_2020_multiplied(entries)
  entries_array = entries.gsub("\n",", ").split(", ").map(&:to_i)
  result = entries_array.combination(3).find_all { |a, b, c| a + b + c == 2020 }
  result.flatten.inject(:*)
end

@input = File.read("#{__dir__}/input.txt")
