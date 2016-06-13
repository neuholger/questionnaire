source = ['a', 'a', 'b']
result = source.each_with_object(Hash.new(0)) { |value,counts| counts[value] += 1 }
puts result