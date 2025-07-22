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
# меня затрахал этот гид уже 
puts "Для управления роботом используйте список команд .."
# Список команд зациклен внутри этого списка 
komandi_dvigeniya = ["PLACE X,Y,F" , "MOVE" , "LEFT" , "RIGHT" , "REPORT"]
komandi_dvigeniya.each do |komandi_dvigeniya|
  puts komandi_dvigeniya
end 
koordinata_X = 0 
koordinata_Y = 0 
puts "Введите значение координаты X .."
loop do
  koordinata_X = gets.to_i
# Вводим кажду переменную по отдельности 
  if koordinata_X > 5 
    puts "Значение выше допустимого , робот разобьется , измените значение... "
  else
    break
  end
end
puts "Введите значение координаты Y.."
loop do 
  koordinata_Y = gets.to_i

  if koordinata_Y > 5 
    puts "Значение выше допустимого, робот разобьется , измените значение.."
  else
    break 
  end
end
puts "Выберете направление движения робота из списка ниже .."
spisok_z = ["Север" , "ЮГ" , "Восток" , "Запад"]
spisok_z.each do |spisok_z|
  puts spisok_z
end
# здесь пока оставляем список , как зациклить и сравнить думаем 
koordinata_z = gets.to_s.strip
# Попытка что то типо MOVE , пока бред , думаем дальше 
# но сыро очень 
puts "Введите следующую команду..."
komandi = gets.to_s.strip 
# комнада MOVE , рабочая))) 
MOVE = [koordinata_X , koordinata_Y , koordinata_z]
if komandi == "MOVE"
    if koordinata_z == "Север"
    koordinata_Y = koordinata_Y + 1 
    elsif koordinata_z == "ЮГ" 
    koordinata_Y = koordinata_Y -1 
    elsif koordinata_z == "Восток"
    koordinata_X = koordinata_X +1  
    else 
    koordinata_X = koordinata_X -1
    end
else 
end

# puts "Введите следующую команду.."

# komandi_2 = gets.to_s.strip 






report = [koordinata_X, koordinata_Y ,koordinata_z ]

puts report
 










# задаем ввоб переменных x и y , f 
















   

































