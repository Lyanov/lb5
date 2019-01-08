def correct_str(str)
  return nil if str.empty?

  str = str.split
  minmax = str.each_with_index.minmax { |a, b| a[0].length <=> b[0].length }
  str[minmax[0][1]], str[minmax[1][1]] = str[minmax[1][1]], str[minmax[0][1]]
  str.join ' '
end
