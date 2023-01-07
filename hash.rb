books = {}

p books
puts books

books["Gravitys Rainbow"] = :splendid

p books
puts books

books["The deep end"]  = :mediocre
books["Living colors"] = :mediocre

p books
puts books

puts books["The deep end"]

puts "########################"

p books.keys
puts books.keys

puts "########################"

ratings = Hash.new {0}

books.values.each { |rate|
  ratings[rate] += 1
}

puts ratings