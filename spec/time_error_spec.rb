require 'time_error'

RSpec.describe TimeError do
    it "calls an API to show the difference between the computer and the server time" do
        requester_double = double :requester
        expect(requester_double).to receive(:get)
        .with(URI("https://worldtimeapi.org/api/ip"))
        .and_return('{"abbreviation":"BST","client_ip":"82.5.46.76","datetime":"2022-10-11T15:28:55.691877+01:00","day_of_week":2,"day_of_year":284,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1665498535,"utc_datetime":"2022-10-11T14:28:55.691877+00:00","utc_offset":"+01:00","week_number":41}')

        my_time = Time.new(2022,10,11, 15,28,55, "+01:00")
        time_error = TimeError.new(requester_double)
        result = time_error.error(my_time)
        expect(result).to eq 0.691877
    end
end