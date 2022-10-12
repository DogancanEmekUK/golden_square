require 'calculator'

RSpec.describe Calculator do
    it "subtracts two numbers" do
        io = double :io
        expect(io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
        expect(io).to receive(:puts).with("Please enter a number.").ordered
        expect(io).to receive(:gets).and_return("4").ordered
        expect(io).to receive(:puts).with("Please enter another number.").ordered
        expect(io).to receive(:gets).and_return("3").ordered
        expect(io).to receive(:puts).with("Here's your result:").ordered
        expect(io).to receive(:puts).with("4 - 3 = 1").ordered

        calculator = Calculator.new(io)
        calculator.run
    end
end