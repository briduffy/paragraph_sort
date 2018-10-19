def paragaph(string)
  hash = Hash.new(0)
  words = string.downcase.gsub /[^a-z0-9 ]+/i, ''
  words.split.each { |i| hash[i] = hash[i] + 1 }
  sorted = hash.sort_by {|k, v| [-v, k]}
  sorted.to_h
end
puts paragaph("Dan Actor is a man, but is not actually an actor. Though, he is Dan and Dan is the man.")