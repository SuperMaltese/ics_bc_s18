def digit_sum(num, len)
  if num.to_s.length == 1
    num
  else
    first = num.to_s[0, len/2]
    second = num.to_s[len/2, len]
    digit_sum(first, first.length).to_i + digit_sum(second,second.length).to_i
  end
end

puts digit_sum 24, 2
