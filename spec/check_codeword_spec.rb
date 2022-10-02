require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "uses codeword to return 'Correct! Come in.'" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
end