require 'cat_fact'

RSpec.describe CatFacts do
    it "uses an API to show a random cat fact" do
        requester_double = double :requester
        expect(requester_double).to receive(:get)
        .with(URI("https://catfact.ninja/fact"))
        .and_return('{"fact":"In multi-cat households, cats of the opposite sex usually get along better.","length":75}')
    
        cat_fact = CatFacts.new(requester_double)
        result = cat_fact.provide
        expect(result).to eq "Cat fact: In multi-cat households, cats of the opposite sex usually get along better."
    
    end
end