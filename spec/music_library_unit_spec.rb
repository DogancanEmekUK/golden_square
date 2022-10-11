require 'music_library'

RSpec.describe "Unit Test" do
    it "adds the tracks to the library" do
        library = MusicLibrary.new
        track_one = double :track_one
        track_two = double :track_two
        library.add(track_one)
        library.add(track_two)
        expect(library.all).to eq [track_one, track_two]
    end
    it "searches the list by the title or the artist" do
        library = MusicLibrary.new
        track_one = double :track_one
        expect(track_one).to receive(:matches?).with("fuel").and_return(false)
        track_two = double :track_two, matches?: false
        expect(track_two).to receive(:matches?).with("fuel").and_return(true)
        library.add(track_one)
        library.add(track_two)
        expect(library.search("fuel")).to eq [track_two]
    end
end