require 'string_builder'

RSpec.describe StringBuilder do
    it "creates the string" do
        string_builder = StringBuilder.new
        string_builder.add("Dogancan")
        result = string_builder.output
        expect(result).to eq "Dogancan"
    end
    it "gives the size of the string correctly" do
        string_builder = StringBuilder.new
        string_builder.add("Dogancan")
        result = string_builder.size
        expect(result).to eq 8
    end
end