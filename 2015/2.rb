
sum = 0

File.foreach("2.txt") do |line|
  l, w, h = line.split("x")
  l, w , h = l.to_i, w.to_i, h.chomp.to_i

  min = [l*h, h*w, l*w].min
  surface = 2*(l*h + h*w + l*w) + min

  sum += surface
end


puts sum
