id = 0
todos = [
  { "id" => (id = id.next), "content" => "Fill the weekly feedback", "completed" => false },
  { "id" => (id = id.next), "content" => "Complete Ruby Basics 1", "completed" => false },
  { "id" => (id = id.next), "content" => "Complete Ruby Basics 2", "completed" => false },
  { "id" => (id = id.next), "content" => "Complete Ruby Methods", "completed" => false },
  { "id" => (id = id.next), "content" => "Do meditation", "completed" => true }
]

def list_todos(todos, completed: false)
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

def create_todo(todos, id, content)
  new_todo = {
    "id" => id,
    "content" => content,
    "completed" => false
  }
  # todos.push(new_todo)
  todos << new_todo
end

def toggle_todo(todos, ids)
  ids.each do |id|
    found_todo = todos.find { |todo| todo["id"] == id }
    found_todo["completed"] = !found_todo["completed"] if found_todo
  end
end

def delete_todo(todos, ids)
  todos.delete_if do |todo|
    ids.include?(todo["id"])
  end
end

# Main program
list_todos(todos)
print_menu
action = nil
while action != "exit"
  print "action: "
  action = gets.chomp
  case action
  when "list"
    list_todos(todos)
    print_menu
  when "completed"
    list_todos(todos, completed: true)
    print_menu
  when "add"
    print "content: "
    content = gets.chomp
    id = id.next
    create_todo(todos, id, content)
    print_menu
  when "toggle"
    print "todo ID(s): "
    ids = gets.chomp.split(",").map(&:to_i)
    toggle_todo(todos, ids)
  when "delete"
    print "todo ID(s): "
    ids = gets.chomp.split(",").map(&:to_i)
    delete_todo(todos, ids)
  end
end
puts "Thanks for using toDOS!"
