cords = [0, 0]
houses = { cords.dup => 1 }

File.foreach("./2015/3.txt") do |line|
  line.each_char do |d|
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
      cords[1] -= 1
    end
  end
end

sum =  houses.values.filter {|n| n >= 1}

p sum.length
