# Приложение имитирует игрушечного робота, движущегося по квадратной поверхности стола размером 5 x 5 единиц.
# Робот может свободно перемещаться по поверхности стола, но необходимо предотвратить его падение и разрушение. Любое движение, которое может привести к падению робота со стола, должно быть предотвращено, однако дальнейшие команды движения по-прежнему должны быть разрешены.
# Начало координат (0,0) можно считать самым юго-западным углом.
# X-длинна , Y-ширина , F-направление робота

  puts " Введите PLACE для запуска вашего робота.. "

loop do
  name_komand = gets.to_s.strip.downcase
  # downcase преобразует буквы в маленькие!
  # PLACE вводится с клавиатуры
  # удаляекм лишнее с помощью strip для вводеа через энтер

  if name_komand == "place".downcase
    puts "Добро пожаловать в вашего личного робота.. "
    break
  else
    puts "Первыя команда всегда должна быть PLACE , введите команду верно."
  end
end
puts "Введите команды.."

koordinata_X = 0
koordinata_Y = 0



name_komand_1 = gets.to_s.strip.downcase.split
argyments = name_komand_1[1].split(",")
 puts argyments.inspect 
koordinata_X = argyments[0]
koordinata_Y = argyments[1]
koordinata_z = argyments[2]

MOVE = [koordinata_X , koordinata_Y , koordinata_z]

if name_komand_1 == "MOVE"
  if koordinata_z == "Север"
    koordinata_Y = koordinata_Y + 1 
  elsif koordinata_z == "ЮГ" 
    koordinata_Y = koordinata_Y -1 
  elsif koordinata_z == "Восток"
    koordinata_X = koordinata_X +1  
  else 
    koordinata_X = koordinata_X -1
  end 
end



report = [koordinata_X, koordinata_Y ,koordinata_z ]

puts report

# задаем ввоб переменных x и y , f
















   

































