require 'digest'

input = "bgvyzdsv"
hash  = Digest::MD5.hexdigest input
i = 0


while hash[0..5] != "000000"
  hash  = Digest::MD5.hexdigest(input + i.to_s)
  i += 1
end
puts i
puts hash
