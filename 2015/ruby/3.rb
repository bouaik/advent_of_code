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

def moves(cords, houses, d)
  if houses.key?(cords)
    houses[cords] += 1
  else
    houses[cords.dup] = 1
  end
  if d == "^"
    cords[0] += 1
  elsif d == "v"
    cords[0] -= 1
  elsif d == ">"
    cords[1] += 1
  elsif d == "<"
    cords [1] -= 1
  end
end

File.foreach("./2015/3.txt") do |line|
  line.each_char.with_index do |d, i|
    i % 2 == 0 ? moves(santa_cords, houses, d) : moves(robot_cords, houses, d)
  end
end

sum =  houses.values.filter {|n| n >= 1}

p sum.length
