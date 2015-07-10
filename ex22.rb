# first program, puts prints out strings
puts "Hello World"

# third program - operators +,-,/,*,%,< less than,> greater than, <=, >=
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 +6
puts "Is 5 less than two? #{5 > 2}"

# fourth program - variables
cars = 10
puts "There are #{cars} available"

# fifth program - embedding variables and printing
# #{} tells ruby, this string needs to be formatted. put 
puts "double quotes are for strings"
puts "I have #{cars} in my garage."

#sixth program - strings, single and double quotes
# double quotes allows you do do string interpolation and special escape characters
# single quote tells Ruby to leave the string alone and ignore any variables inside it
a = 2
puts "I have #{a} cats."

# seventh program - more printing
# puts adds a new line after executing, print does not
end1 = "H"
end2 = "e"
end3 = "y"

print end1 + end2 + end3

# eighth program - printing and formatting
# You will use #{} to format your strings, but when u want to apply the same format to multiple values, use %{}
formatter = "%{first} %{second} %{third} %{fourth}"
puts formatter % {
	first: "I had this thing.",
	second: "That you could type.",
	third: "But it didn't sing.",
	fourth: "So I said goodbye."
}

# tenth program - escape characters
# \n is a new line character
tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split \non a line."
backslash_cat = "I'm \\ a \\ cat."

puts tabby_cat
puts persian_cat
puts backslash_cat

# eleventh program - asking questions
print "How old are you? "
age = gets.chomp
puts "So you are #{age} years old."

# twelfth program - asking for numbers
print  "Give me a number"
number = gets.chomp.to_i
puts "Your number is #{number}"

# thirteenth program - ARGVs
first, second, third = ARGV 
puts "You gave me #{first}, #{second}, #{third}"

# fourteenth program - prompting and passing
user_name = ARGV.first
prompt = "> "
puts "Hello #{user_name}"
puts "What year were you born? ", prompt
year = $stdin.gets.chomp
puts "You said you were born in #{year}."

#fifthteenth program - reading files
filename = ARGV.second
txt = open(filename)
puts "Here is your file #{filename}"
print txt.read
txt.close

# sixteenth/seventeenth program - reading and writing to files
# close - closes the file
# read - reads the contents, u can assign it to a variable
# readline - reads just one line of a text file
# truncate - empties the file
# write('stuff') writes to a file
target = open(filename, 'w')
target.truncate
target.write("The first line")
target.write("The second line")
target.close

# eighteenth, nineteenth, twentieth program  - names, variables, and functions
def print_none()
	puts "I got nothin"
end

def cheese_and_crackers(cheese_count, box_count)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{box_count} boxes of cheese"
end

print_none()
cheese_and_crackers(10, 4)

# twenty first program - function return
def multiply(a, b)
	return a * b
end
multiplication = multiply(3, 10)
puts "The result of your calculation is #{multiplication}"
