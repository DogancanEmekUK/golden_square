require 'gratitudes'

RSpec.describe Gratitudes do
    it "formats gratitudes nicely" do
        grats = Gratitudes.new
        grats.add("health")
        grats.add("love")
        grats.add("money")
        result = grats.format
        expect(result).to eq "Be grateful for: health, love, money"
    end
end