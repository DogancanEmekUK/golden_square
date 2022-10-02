require 'counter'

RSpec.describe Counter do
    it "counts until the given number" do
        counter = Counter.new
        counter.add(5)
        result = counter.report
        expect(result).to eq "Counted to 5 so far."
    end
end