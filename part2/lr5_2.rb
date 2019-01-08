def corrector(arg, word)
  temp = arg.split
  temp.size.times do |i|
    if temp[i][0] == 'л' && i.even?
      temp[i] = ''
    elsif temp[i][0] == 'н' && i.odd?
      temp[i] = word
    end
  end
  temp.delete_if { |elem| elem == '' }
end
