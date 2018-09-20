def sum_up(str)
  sums = []
  str.each_line do |sentence|
    words = sentence.split(" ")
    sum = words.map(&:to_i).reduce(0,:+)
    sum === 0 ? sums << "" : sums << sum.to_s
  end
  sums.join("\n")
end
