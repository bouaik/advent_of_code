lefts = []
rights = []

File.foreach("./2024/1.txt") do |line|
  l, r =  line.split("   ")
  lefts << l.to_i
  rights << r.chomp.to_i
end

# Part 1

# lefts = lefts.sort
# rights = rights.sort

# i = 0
# sum = 0
# while i < lefts.length
#     d = (lefts[i] - rights[i]).abs

#     sum += d

#     i += 1
# end


# p sum

# Part 2

sum = 0
lefts.each do |l|
  times = 0

  rights.each do |r|
    times += 1 if l == r
  end

  sum += l * times
end

p sum
