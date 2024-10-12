####################### PART ONE #######################

# cords = [0, 0]
# houses = { cords.dup => 1 }

# File.foreach("./2015/3.txt") do |line|
#   line.each_char do |d|
#     if houses.key?(cords)
#       houses[cords] += 1
#     else
#       houses[cords.dup] = 1
#     end

#     if d == "^"
#       cords[0] += 1
#     elsif d == "v"
#       cords[0] -= 1
#     elsif d == ">"
#       cords[1] += 1
#     elsif d == "<"
#       cords[1] -= 1
#     end
#   end
# end

# sum =  houses.values.filter {|n| n >= 1}

# p sum.length




####################### PART TWO #######################
santa_cords = [0, 0]
robot_cords = [0, 0]
houses = { santa_cords.dup => 1 }

File.foreach("./2015/3.txt") do |line|
  line.each_char.with_index do |d, i|
    if i % 2 == 0 # santa moves
      if houses.key?(santa_cords)
        houses[santa_cords] += 1
      else
        houses[santa_cords.dup] = 1
      end
      if d == "^"
        santa_cords[0] += 1
      elsif d == "v"
        santa_cords[0] -= 1
      elsif d == ">"
        santa_cords[1] += 1
      elsif d == "<"
        santa_cords[1] -= 1
      end
    else  # robot moves
      if houses.key?(robot_cords)
        houses[robot_cords] += 1
      else
        houses[robot_cords.dup] = 1
      end
      if d == "^"
        robot_cords[0] += 1
      elsif d == "v"
        robot_cords[0] -= 1
      elsif d == ">"
        robot_cords[1] += 1
      elsif d == "<"
        robot_cords[1] -= 1
      end
    end
  end
end


def moves



sum =  houses.values.filter {|n| n >= 1}

p sum.length
