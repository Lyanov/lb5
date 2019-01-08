require_relative 'lr5_2'

print 'введите количество строк '
a = gets.to_i
print a
puts "\n"
b = [0...a]

a.times { |i| b[i] = gets }

print 'Введите слово, на которое необходимо заменить неподходящие слова'
word = gets

b.size.times do |i|
  b[i] = corrector(b[i], word)
  print b[i].join(' ') if b[i] != ''
  puts "\n"
end
