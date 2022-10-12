class String_Repeater
    def initialize(io)
        @io = io
    end

    def string_repeater 
        @io.puts("Hello. I will repeat a string many times.")
        @io.puts("Please enter a string")
        string = get_string
        @io.puts("Please enter a number of repeats")
        repeats = put_repeats
        @io.puts("Here is your result:")
        @io.puts(string * repeats)
    end

    def get_string
        string = @io.gets.chomp
        fail "You must enter a string" if string.empty?
        return string
    end

    def put_repeats
        repeats = get_repeats
        fail "Zero is not a valid number to multiply with" if repeats == 0
        return repeats
    end

    def get_repeats
        number = @io.gets
        fail "You must enter a number" if number.to_s.empty?
        return number
    end

end