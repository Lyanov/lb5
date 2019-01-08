require './task1.rb'

# Class for running task1 from console
class ConsoleModule
  def initialize(stop_word = 'exit')
    @stop_w = stop_word
  end

  def input_from_user
    print "Enter #{@stop_w} for exit. Enter any number > 0: "
    gets.chomp # Delete \n, because we don't need it
  end

  def run
    input = input_from_user
    until input == @stop_w
      input = input.to_f
      if input < 10**-7
        puts 'Wrong input!!!'
      else
        result = calculate(input)
        puts result
      end
      input = input_from_user
    end
  end
end

cons = ConsoleModule.new
cons.run
