require "active_support/inflector"

$db = {
  workers: [
    {id:1, username:"worker1"}, 
    {id:2, username:"worker2"}
  ],
  tasks: [
    { id:1, title:"task 1", completed: false}, 
    { id:2,title:"task 2", completed: false}, 
    { id:3, title: "task 3", completed: true}
  ],
  projects: [
    { id: 1, title: "Project 1", owner: "abc"},
    { id: 2, title: "Project 2", owner: "def"},
    { id: 3, title: "Project 3", owner: "abc"},
    { id: 4, title: "Project 4", owner: "xyz"},
  ]
}

class Model 
  def initialize 
    puts "#{self} #{class_name} is getting initialized..."
  end

  def self.connect
    p self
    class_name = to_s.downcase.pluralize
    @data = $db[:"#{class_name}"]
  end

  def self.data 
    @data
  end

  def self.method_missing(method, *args, &block) 

    method_tokens = method.to_s.split("_")

    search_field = method_tokens[2]
    if method_tokens[0] == "find"
      results = []
      self.data.each do |row|
        if row.key?(search_field.to_sym)
          if args[0] == row[search_field.to_sym]
            results << row
          end
        end
      end
      results
    else 
      super
    end
  end
end

class Worker < Model
  connect
  
end

class Task < Model
  connect
end

class Project < Model 
  connect
end

puts "Find User by id : 2"
user1 = Worker.find_by_id(2)
p user1

puts "Find task by id 1"
task = Task.find_by_id(1) {
  puts "Successfull found it."
}
p task 

puts "Find completed tasks"
tasks = Task.find_by_completed(true)
p tasks

puts "Find task by title 'task 1'"
tasks = Task.find_by_title("task 1")
p tasks

puts "Find project for rajesh"
projects = Project.find_by_owner("abc")
p projects