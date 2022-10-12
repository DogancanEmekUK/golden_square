class Calculator
    def initialize(io)
        @io = io 
    end

    def run
        @io.puts "Hello. I will subtract two numbers."
        @io.puts "Please enter a number."
        number_one = @io.gets.chomp
        @io.puts "Please enter another number."
        number_two = @io.gets.chomp
        @io.puts "Here's your result:"
        @io.puts "#{number_one} - #{number_two} = #{number_one.to_i - number_two.to_i}"
    end
end