require 'present'

RSpec.describe Present do
    context "When everything is right" do
        it "successfully wraps the given amount of presents" do
            present = Present.new
            present.wrap(6)
            expect(present.unwrap).to eq 6
        end
    end
    context "When there's an error" do
        it "fails to unwrap without wrapping first" do
            present = Present.new
            expect {present.unwrap}.to raise_error "No contents have been wrapped."
        end
        it "fails to wrap if we've wrapped before without unwrapping" do
            present = Present.new
            present.wrap(6)
            expect {present.wrap(2)}.to raise_error "A contents has already been wrapped."
        end
    end
end