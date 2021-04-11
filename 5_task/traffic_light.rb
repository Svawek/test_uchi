loop do
  puts 'Укажите цвет светлофора'
  puts 'Нажмите 0 для выхода'

  answer = gets.chomp

  case answer
  when 'green' then puts 'Можно идти'
  when 'yellow' then puts 'Ждите'
  when 'red' then puts 'Стойте'
  when '0' then break
  else
    puts 'Вы указали неправильный цвет'
  end
end
