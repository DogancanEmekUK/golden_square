require 'string_repeater'

RSpec.describe String_Repeater do
    it "repeats the given string a given number of times" do
        io = double :io
        expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(io).to receive(:puts).with("Please enter a string").ordered
        expect(io).to receive(:gets).and_return("GOOGLE").ordered
        expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
        expect(io).to receive(:gets).and_return(5).ordered
        expect(io).to receive(:puts).with("Here is your result:").ordered
        expect(io).to receive(:puts).with("GOOGLEGOOGLEGOOGLEGOOGLEGOOGLE").ordered

        string = String_Repeater.new(io)
        string.string_repeater
    end
    it "fails when the string is empty" do
        io = double :io
        expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(io).to receive(:puts).with("Please enter a string").ordered
        expect(io).to receive(:gets).and_return("").ordered

        string = String_Repeater.new(io)
        expect{ string.string_repeater }.to raise_error "You must enter a string"
    end

    it "fails when the given number is zero" do
        io = double :io
        expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(io).to receive(:puts).with("Please enter a string").ordered
        expect(io).to receive(:gets).and_return("GOOGLE").ordered
        expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
        expect(io).to receive(:gets).and_return(0).ordered

        string = String_Repeater.new(io)
        expect{ string.string_repeater }.to raise_error "Zero is not a valid number to multiply with"
    end

    it "fails when the given number is zero" do
        io = double :io
        expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(io).to receive(:puts).with("Please enter a string").ordered
        expect(io).to receive(:gets).and_return("GOOGLE").ordered
        expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
        expect(io).to receive(:gets).and_return("").ordered

        string = String_Repeater.new(io)
        expect{ string.string_repeater }.to raise_error "You must enter a number"
    end
end