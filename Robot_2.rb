puts " Введите PLACE для запуска вашего робота.. "

class Move
  def move_2
    if direction == "запад"
      x = x - 1
    elsif direction == "юг"
      y = y - 1
    elsif direction == "восток"
      x = x + 1
    else
      y = y + 1
    end
  end
end

class Report
  
  def report_2
    report = [x, y , direction]
    puts report
  end
end

class Left 
  def left_2
    if direction == "север"
      direction = "запад"
    elsif direction == "юг"
      direction = "восток"
    elsif direction == "запад"
      direction = "юг"
    else 
      direction = "север"
    end
  end
end

class Right

  def right_2
    if direction == "север"
      direction = "восток"
    elsif direction == "юг"
      direction = "запад"
    elsif direction == "запад"
      direction = "север"
    else
      direction = "юг"
    end
  end
end



loop do

  command = gets.to_s.strip.downcase

  if command == "place"
    command_2 = gets.to_s.strip.downcase.split
    argyments = command_2[1].split(",")
    x = argyments[0].to_i 
    y = argyments[1].to_i  
    direction = argyments[2].to_s
  elsif command == "move" 
   polog = Move.new
  elsif command == "report"
    polog = Report.new
    puts polog
    break 
  elsif command == "left" 
    polog = Left.new
  elsif command == "right"
    polog = Right.new
  else 
    puts "Первыя команда всегда должна быть PLACE , введите команду верно."
  end
end

  
 
    

