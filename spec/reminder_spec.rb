require 'reminder'

RSpec.describe Reminder do
    it "reminds user to do a task" do
        reminder = Reminder.new("Dogancan")
        reminder.remind_me_to("Make tea")
        result = reminder.remind()
        expect(result).to eq "Make tea, Dogancan!"
    end
    it "reminds user to do a task" do
        reminder = Reminder.new("Dogancan")
        reminder.remind_me_to("Do your homework")
        result = reminder.remind()
        expect(result).to eq "Do your homework, Dogancan!"
    end
end