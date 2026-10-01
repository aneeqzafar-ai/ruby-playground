text="Ruby is fun. Ruby is powerful, and Ruby is expressive. Fun code is good code."

normalized=text.downcase.gsub(".","").gsub(",","")
words=normalized.split


word_counts=Hash.new(0)

words.each do |word|
  word_counts[word]+=1
end

p word_counts