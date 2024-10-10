File.foreach("./2015/1.txt") do |line|

  n = 0
  line.each_char.with_index do |c, i|


    # start part two
    if n == -1
      puts i
      break
    end
    # end part two

    if c == "("
      n += 1
    elsif c == ")"
      n -= 1
    end
  end

  puts n
end
