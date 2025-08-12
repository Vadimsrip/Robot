# Приложение имитирует игрушечного робота, движущегося по квадратной поверхности стола размером 5 x 5 единиц.
# Робот может свободно перемещаться по поверхности стола, но необходимо предотвратить его падение и разрушение. Любое движение, которое может привести к падению робота со стола, должно быть предотвращено, однако дальнейшие команды движения по-прежнему должны быть разрешены.
# Начало координат (0,0) можно считать самым юго-западным углом.
# X-длинна , Y-ширина , F-направление робота

class Robot

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def place(x, y, direction) 
    @x = x
    @y = y
    @direction = direction
  end 

  def move
    if @direction == "запад"
      @x = @x - 1
    elsif @direction == "юг"
      @y = @y - 1
    elsif @direction == "восток"
      @x = @x + 1
    else
      @y = @y + 1
    end
  end

  def report 
     report = [@x,@y, @direction]
  end 

  def left 
    if @direction == "север"
      @direction = "запад"
    elsif @direction == "юг"
      @direction = "восток"
    elsif @direction == "запад"
      @direction = "юг"
    else 
      @direction = "север"
    end
  end 

  def right
    if @direction == "север"
      @direction = "восток"
    elsif @direction == "юг"
      @direction = "запад"
    elsif @direction == "запад"
      @direction = "север"
    else
      @direction = "юг"
    end
  end

  def sravnenie
    if @x > 5 
      puts "Измените значение x , иначе робот разобьется"
    elsif @y > 5 
      puts "Измените значение y , иначе робот разобьется"
    else
    end
  end

end


puts " Введите PLACE для запуска вашего робота.. "

robot1 = Robot.new(0, 0, nil)

loop do

  command = gets.to_s.strip.downcase
  
  if command == "place"
    command_2 = gets.to_s.strip.downcase.split
    argyments = command_2[1].split(",")
    x = argyments[0].to_i 
    y = argyments[1].to_i  
    direction = argyments[2].to_s
    robot1.place(x,y,direction)
  elsif command == "move"
    robot1.move
  elsif command == "report"
    robot1.report
    puts robot1.report
    break
  elsif command == "left"
    robot1.left
  elsif command == "right"
    robot1.right
  else
    puts "Первыя команда всегда должна быть PLACE , введите команду верно."
  end

robot1.sravnenie
  
end






















   

































