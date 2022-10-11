require "task_list"
require "task"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  it "returns all tasks" do
    task_list = TaskList.new
    task1 = double :task1
    task2 = double :task2
    task_list.add(task1)
    task_list.add(task2)
    expect(task_list.all).to eq [task1, task2]
  end

  it "returns false if task list is empty" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "returns false if tasks in the list are not all complete" do
    task_list = TaskList.new
    task1 = double :task1, complete?: false
    task2 = double :task2, complete?: true
    task_list.add(task1)
    task_list.add(task2)
    expect(task_list.all_complete?).to eq false
  end

  it "returns true if tasks in the list are all complete" do
    task_list = TaskList.new
    task1 = double :task1, complete?: true
    task2 = double :task2, complete?: true
    task_list.add(task1)
    task_list.add(task2)
    expect(task_list.all_complete?).to eq true
  end

end
