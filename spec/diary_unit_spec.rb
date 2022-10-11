require 'diary'
require 'diary_entry'

RSpec.describe "Unit Test" do
    it "returns the sum of all words" do
        diary = Diary.new
        diary.add(double :fake_entry_one, count_words: 3)
        diary.add(double :fake_entry_two, count_words: 2)
        diary.add(double :fake_entry_three, count_words: 5)
        expect(diary.count_words).to eq 10
    end
    it "returns all entries" do
        diary = Diary.new
        entry_one = double :fake_entry_one
        entry_two = double :fake_entry_two
        diary.add(entry_one)
        diary.add(entry_two)
        expect(diary.entries).to eq [entry_one, entry_two]
    end
end