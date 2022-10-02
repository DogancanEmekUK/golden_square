require 'password_checker'

RSpec.describe PasswordChecker do
    context "No errors" do
        it "successfully validates password" do
            password_checker = PasswordChecker.new
            result = password_checker.check("kdgfksdhf")
            expect(result).to eq true
        end
    end
    context "Errors" do
        it "fails to validate" do
            password_checker = PasswordChecker.new
            expect { password_checker.check("hey123") }.to raise_error "Invalid password, must be 8+ characters."
        end
    end
end