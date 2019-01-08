# Calculator, OK
class Calculator
  def initialize(arg)
    @x = arg
  end

  def calculate(arg)
    @y = (1 - Math.sqrt((1 + Math.sin(arg).abs))) / (2 + Math.cos(arg)**2)
  end

  def printresult(arg)
    calculate(arg)
    puts @y
  end

  def setx(arg)
    @x = arg
  end
end
