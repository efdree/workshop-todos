todos = [
  { "id" => 1, "content" => "Fill the weekly feedback", "completed" => false },
  { "id" => 2, "content" => "Complete Ruby Basics 1", "completed" => false },
  { "id" => 3, "content" => "Complete Ruby Basics 2", "completed" => false },
  { "id" => 4, "content" => "Complete Ruby Methods", "completed" => false },
  { "id" => 5, "content" => "Do meditation", "completed" => false }
]

def list_todos(todos)
  puts "------------------------Welcome to toDOS------------------------"
  todos.each do |todo|
    puts "#{todo['id']}. #{todo['content']}"
  end
end

def print_menu
  puts "-" * 64
  puts "add | list | completed | toggle | delete | exit"
  puts "\n"
end

def create_todo(todos, id, content)
  new_todo = {
    "id" => id,
    "content" => content,
    "completed" => false
  }
  # todos.push(new_todo)
  todos << new_todo
end

# Main program
list_todos(todos)
print_menu
action = nil
while action != "exit"
  print "action: "
  action = gets.chomp
  case action
  when "add"
    print "content: "
    content = gets.chomp
    id = todos.size + 1
    create_todo(todos, id, content)
    print_menu
  when "list" then puts "LIST"
  when "completed" then puts "COMPLETED"
  when "toggle" then puts "TOGGLE"
  when "delete" then puts "DELETE"
  end
end
puts "Thanks for using toDOS!"
