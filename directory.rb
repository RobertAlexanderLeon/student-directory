
# Student directory work in progress April 1st 2014 #

def print_header 
	puts "The students of my cohort at Makers Academy"
    puts "-------------------------------------------"
end

# Ask for user input to compile student data #

def input_students
	puts "Please enter the names of the students you'd like to add to the database"
	puts "To finish, just hit return twice"
	# create an empty array #
	students = []
	#get the first name
	name = gets.chomp
	#while the name is not empty, repeat this code
	while !name.empty? do
	# add the student hash to the array
	students << {:name => name, :cohort => :March}
	#get another name from the user
	name = gets.chomp
end
#return the array of students
students
end

students = input_students

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end


# Print total student count with .length #
def print_footer(students)
puts ""
puts "Overall, we have #{students.length} great students"
end

# Call the methods for output #

print_header
print(students)
print_footer(students)