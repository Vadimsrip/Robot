# Приложение имитирует игрушечного робота, движущегося по квадратной поверхности стола размером 5 x 5 единиц.
# Робот может свободно перемещаться по поверхности стола, но необходимо предотвратить его падение и разрушение. Любое движение, которое может привести к падению робота со стола, должно быть предотвращено, однако дальнейшие команды движения по-прежнему должны быть разрешены.
# Начало координат (0,0) можно считать самым юго-западным углом.
# X-длинна , Y-ширина , F-направление робота

puts " Введите PLACE для запуска вашего робота.. "
x = 0
y = 0
direction = nil

loop do
  command = gets.to_s.strip.downcase
  # downcase преобразует буквы в маленькие!
  # PLACE вводится с клавиатуры
  # удаляекм лишнее с помощью strip для вводеа через энтер
  
  if command == "place"
    command_2 = gets.to_s.strip.downcase.split
    argyments = command_2[1].split(",")
    x = argyments[0].to_i
    y = argyments[1].to_i
    direction = argyments[2].to_s
  elsif command == "move"
    if direction == "запад"
      x = x - 1
    elsif direction == "юг"
      y = y - 1
    elsif direction == "восток"
      x = x + 1
    else
      y = y + 1
    end
  elsif command == "report"
    report = [x, y , direction]
    puts report
    break
  else
    puts "Первыя команда всегда должна быть PLACE , введите команду верно."
  end
end
 




















   

































