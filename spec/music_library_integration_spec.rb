require 'music_library'
require 'track'

RSpec.describe "Integration" do
    it "adds the track to the library" do
        library = MusicLibrary.new
        track = Track.new("Metallica", "Fuel")
        library.add(track)
        expect(library.all).to eq [track]
    end
    it "finds the track by title or artist" do
        library = MusicLibrary.new
        track_1 = Track.new("Metallica", "Fuel")
        track_2 = Track.new("Metallica", "Sad but True")
        track_3 = Track.new("Fuel", "Sad but True")
        library.add(track_1)
        library.add(track_2)
        library.add(track_3)
        expect(library.search("Fuel")).to eq [track_1, track_3]
    end
end