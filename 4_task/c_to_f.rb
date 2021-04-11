class CelsiusToFahrenheit
  def convert
    loop do
      puts 'Введите градусы по Цельсию: '
      c = gets.chomp

      if check_str(c)
        c.sub!(',', '.') if c.include? ','
        f = c.to_f * 1.8 + 32
        puts "Градусы по Фаренгейту: #{f}"
        break
      else
        puts "#{c} не является числом."
      end
    end
  end

  def check_str(str)
    scan = str.scan(/\D/)
    case scan.size
    when 0 then true
    when 1 then scan[0] == '.' || scan[0] == ','
    when 2 then scan[0] == '-' && (scan[1] == '.' || scan[1] == ',')
    end
  end
end

convert = CelsiusToFahrenheit.new
convert.convert
