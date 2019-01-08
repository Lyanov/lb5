require './str_correct.rb'

# Class for running task1 from console
class ConsoleModule
  def initialize(stop_word = 'exit')
    @stop_w = stop_word
  end

  def input_from_user
    print "Enter #{@stop_w} for exit. Enter any other string: "
    gets.chomp
  end

  def run
    input = input_from_user
    until input == @stop_w
      if input.empty?
        print "Wrong input!!!\n"
      else
        result = correct_str input
        puts 'Yours corrected string: %s' % result
      end
      input = input_from_user
    end
  end
end

ConsoleModule.new.run
