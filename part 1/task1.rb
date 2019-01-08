def calculate(value)
  return nil if value <= 0

  Math.log(value) / Math.cos(value)**2 + value**3 - 5
end
