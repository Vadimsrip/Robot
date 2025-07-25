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
  else 
    puts "Первыя команда всегда должна быть PLACE , введите команду верно."
  end

  koordinata_X = 0
  koordinata_Y = 0
  koordinata_F = "Север"

  name_komand_1 = gets.to_s.strip.downcase.split
  argyments = name_komand_1[1].split(",")

  koordinata_X = argyments[0]
  koordinata_Y = argyments[1]
  koordinata_F = argyments[2]

  report = [koordinata_X, koordinata_Y ,koordinata_F]
break


  #puts report
end

















   

































