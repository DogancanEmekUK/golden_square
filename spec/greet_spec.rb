require 'greet'

RSpec.describe "greet method" do
    it "uses #{name} to return 'Hello, #{name}!'" do
        result = greet("Josh")
        expect(result).to eq "Hello, Josh!"
    end
end