# Workshop: toDOS

**toDOS** is an Command Line Interface Application (CLI app) that give you the
ability to handle any kind of tasks. Falling behind on the program schedule, get
your task organized with toDOS!

## How the program works

### Start the program

```bash
$ ruby todos.rb
------------------------Welcome to toDOS------------------------

 1. Fill the weekly feedback
 2. Complete Ruby Basics 1
 3. Complete Ruby Basics 2
 4. Complete Ruby Methods
 5. Do meditation

----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: 
```

### Add todo

```bash
------------------------Welcome to toDOS------------------------

 1. Fill the weekly feedback
 2. Complete Ruby Basics 1
 3. Complete Ruby Basics 2
 4. Complete Ruby Methods
 5. Do meditation

----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: add
content: "My new todo"
----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: 
```

### List todos (not completed)

```bash
----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: list
------------------------Welcome to toDOS------------------------

 1. Fill the weekly feedback
 2. Complete Ruby Basics 1
 3. Complete Ruby Basics 2
 4. Complete Ruby Methods
 5. Do meditation
 6. My new todo

----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: 
```

### Toggle todos (mark as completed and viceversa)

```bash
----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: list
------------------------Welcome to toDOS------------------------

 1. Fill the weekly feedback
 2. Complete Ruby Basics 1
 3. Complete Ruby Basics 2
 4. Complete Ruby Methods
 5. Do meditation
 6. My new todo

----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: toggle
todo ID: 1, 2, 5
----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action:
```

### List Completed

```bash
----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: list
------------------------Welcome to toDOS------------------------

 3. Complete Ruby Basics 2
 4. Complete Ruby Methods
 6. My new todo

----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: completed
------------------------Welcome to toDOS------------------------

 1. Fill the weekly feedback
 2. Complete Ruby Basics 1
 5. Do meditation

----------------------------------------------------------------
add | list | completed | toggle | delete

action: 
```

### Delete Todo

```bash
----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: list
------------------------Welcome to toDOS------------------------

 3. Complete Ruby Basics 2
 4. Complete Ruby Methods
 6. My new todo

----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: delete
todo ID: 6
----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: list
------------------------Welcome to toDOS------------------------

 3. Complete Ruby Basics 2
 4. Complete Ruby Methods

----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: 
```

### Exit

```bash
----------------------------------------------------------------
add | list | completed | toggle | delete | exit

action: exit
Thanks for using toDOS!
$ 
```
