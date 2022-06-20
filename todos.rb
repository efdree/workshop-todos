todos = [
  { "id" => 1, "content" => "Fill the weekly feedback", "completed" => false },
  { "id" => 2, "content" => "Complete Ruby Basics 1", "completed" => false },
  { "id" => 3, "content" => "Complete Ruby Basics 2", "completed" => false },
  { "id" => 4, "content" => "Complete Ruby Methods", "completed" => false },
  { "id" => 5, "content" => "Do meditation", "completed" => true }
]

def print_menu
  puts ("-" * 64).to_s
  puts "add | list | completed | toggle | delete | exit"
  puts "\n"
end

def welcome(todos)
  puts "#{'-' * 24}Welcome to toDOS#{'-' * 24}"
  puts "\n"
  todos.each do |task|
    puts "#{task['id']}. #{task['content']}"
  end
  print_menu
  action(todos)
end

def action(todos)
  action = nil
  while action != "exit"
    print "action: "
    action = gets.chomp
    case action
    when "add" then add(todos)
    when "list" then list(todos)
    when "completed" then completed(todos)
    when "toggle" then toggle(todos)
    when "delete" then delete(todos)
    end
  end
end

def add(todos)
  content = ""
  while content.empty?
    print "content: "
    content = gets.chomp
  end
  add_content = { "id" => (todos.length + 1), "content" => content, "completed" => false }
  todos.push(add_content)
  print_menu
  # action(todos)
end

def list(todos)
  puts "#{'-' * 24}Welcome to toDOS#{'-' * 24}"
  puts "\n"
  todos.each do |task|
    puts "#{task['id']}. #{task['content']}" if task["completed"] == false
  end
  print_menu
  # action(todos)
end

def completed(todos)
  puts "#{'-' * 24}Welcome to toDOS#{'-' * 24}"
  puts "\n"
  todos.each do |task|
    puts "#{task['id']}. #{task['content']}" if task["completed"] == true
  end
  print_menu
  #  action(todos)
end

def toggle(todos)
  tasks = ""
  while tasks.empty?
    print "todo ID: "
    tasks = gets.chomp.split(", ")
    tasks.each do |task|
      (0..(todos.length - 1)).each do |i|
        todos[i]["completed"] = true if task.to_i == todos[i]["id"]
      end
    end
  end
  print_menu
  # action(todos)
end

def delete(todos)
  flush = 0
  until flush.positive?
    print "todo ID: "
    flush = gets.chomp.to_i
    todos.delete_if do |todo|
      flush == todo["id"]
    end
  end
  print_menu
end

welcome(todos)
puts "Thanks for using toDOS!"
