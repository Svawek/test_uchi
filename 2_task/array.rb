arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

arr_keys = []
arr_values = []

arr.each { |h| arr_keys.concat(h.keys) }

arr.each { |h| arr_values.concat(h.values) }

puts "Массив всех ключей: #{arr_keys}"
puts "Массив всех уникальных ключей: #{arr_keys.uniq}"
puts "Массив всех значений: #{arr_values}"
puts "Сумма всех значений: #{arr_values.sum}"
