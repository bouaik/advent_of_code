result = 0

file = File.open("./2015/5.txt")
lines = file.readlines.map(&:chomp)

def disalowd_strings_func(line)
  disalawoed_strings = ["ab", "cd", "pq", "xy"]
  disalawoed_strings.each do |d|
    return true if line.include? d
  end
  false
end

def contain_three_vowels(line)
  vowels = "aeiou"
  count = 0
  line.each_char do |c|
    count += 1 if vowels.include? c
    return true if count == 3
  end
  false
end

def letter_twice(line)
  line.each_char.with_index do |c, i|
    return true if line[i] == line[i + 1]
  end
  false
end

lines.each do |line|
  puts contain_three_vowels(line), line
  next if disalowd_strings_func(line)
  result += 1 if contain_three_vowels(line) && letter_twice(line)
end

p result
