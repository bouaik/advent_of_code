lefts = []
rights = []

File.foreach("./2024/1.txt") do |line|
  l, r =  line.split("   ")
  lefts << l.to_i
  rights << r.chomp.to_i
end


lefts = lefts.sort
rights = rights.sort

i = 0
sum = 0
while i < lefts.length
    d = (lefts[i] - rights[i]).abs

    sum += d

    i += 1
end


p sum
