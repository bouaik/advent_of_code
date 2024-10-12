####################### PART ONE #######################

# sum = 0

# File.foreach("./2015/2.txt") do |line|
#   l, w, h = line.split("x")
#   l, w , h = l.to_i, w.to_i, h.chomp.to_i

#   min = [l*h, h*w, l*w].min
#   surface = 2*(l*h + h*w + l*w) + min

#   sum += surface
# end
# puts sum


####################### PART TWO #######################

sum = 0
File.foreach("./2015/2.txt") do |line|
  l, w, h = line.split("x")
  l, w , h = l.to_i, w.to_i, h.chomp.to_i
  min1, min2 = [l, h, w].min(2)

  surface = l*w*h
  surface += 2*(min1 + min2)

  sum += surface
end
puts sum
