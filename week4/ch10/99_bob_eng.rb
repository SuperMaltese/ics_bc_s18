def english_number(number)
  return 'Please enter a number that isn\'t negative.' if number < 0 # No negative numbers.
  return 'zero' if number == 0
  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = %w[one two three four five six
                  seven eight nine]
  tens_place = %w[ten twenty thirty forty fifty
                  sixty seventy eighty ninety]
  teenagers = %w[eleven twelve thirteen
                 fourteen fifteen sixteen seventeen eighteen nineteen]
  big_guns = %w[thousand million billion trillion quadrillion]
  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  left = number

  digits = left.to_s.length / 3
  inc = digits - 1
  while inc > 0
    write = left / (1000 ** digits)
    left -= write * (1000 ** digits)
    if write > 0
      # Now here's the recursion:
      illions = english_number write
      num_string = num_string + illions + ' ' + big_guns[inc]
      if left > 0
        # So we don't write 'two hundredfifty-one'...
        num_string += ' '
      end
    end
    inc = inc - 1
  end

  write = left / 1000 # How many thousands left?
  left -= write * 1000 # Subtract off those thousands.
  if write > 0
    # Now here's the recursion:
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string += ' '
    end
  end

  write = left / 100 # How many hundreds left?
  left -= write * 100 # Subtract off those hundreds.
  if write > 0
    # Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string += ' '
    end
  end
  write = left / 10 # How many tens left?
  left -= write * 10 # Subtract off those tens.
  if write > 0
    if (write == 1) && (left > 0)
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string += teenagers[left - 1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string += tens_place[write - 1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    if left > 0
      # So we don't write 'sixtyfour'...
      num_string += '-'
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string += ones_place[write - 1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
  # Now we just return "num_string"...
  num_string
end

def bob number
  str = "Ninety-nine bottles of beer on the wall, ninety-nine bottles of beer\n"
  str = str + recursive_bob(98)
  str + "Go to the store and buy some more, ninety-nine bottles of beer on the wall"
end
def recursive_bob number
  if number == 1 #The one that's different
    return "Take one down and pass it around, one bottle of beer on the wall\n\nOne bottle of beer on the wall, one bottle of beer\nTake one down and pass it around, no more bottles of beer on the wall\n\nNo more bottles of beer on the wall, no more bottles of beer\n"
  end
  num_string = english_number(number)
  str = "Take one down and pass it around, #{num_string} bottles of beer on the wall\n\n#{num_string.capitalize} bottles of beer on the wall, #{num_string} bottles of beer.\n"
  str + recursive_bob(number - 1)
end

puts bob 99
