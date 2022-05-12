todos = [
  { "id" => 1, "content" => "Fill the weekly feedback", "completed" => false },
  { "id" => 2, "content" => "Complete Ruby Basics 1", "completed" => false },
  { "id" => 3, "content" => "Complete Ruby Basics 2", "completed" => false },
  { "id" => 4, "content" => "Complete Ruby Methods", "completed" => false },
  { "id" => 5, "content" => "Do meditation", "completed" => true }
]

def list_todos(todos, completed = false)
  puts "------------------------Welcome to toDOS------------------------"
  todos.each do |todo|
    puts "#{todo['id']}. #{todo['content']}" if todo["completed"] == completed
  end
end

def print_menu
  puts "-" * 64
  puts "add | list | completed | toggle | delete | exit"
  puts "\n"
end

# Main program
list_todos(todos)
print_menu
action = nil
while action != "exit"
  print "action: "
  action = gets.chomp
  case action
  when "add" then puts "ADD"
  when "list"
    list_todos(todos)
    print_menu
  when "completed"
    list_todos(todos, true)
    print_menu
  when "toggle" then puts "TOGGLE"
  when "delete" then puts "DELETE"
  end
end
puts "Thanks for using toDOS!"
