users = [
	{username: "Dan", password: "Password123"},
	{username: "Steve", password: "ilovechristmas"},
	{username: "Kermit", password: "misspiggy"},
	{username: "Ronaldo", password: "12345678"}
]

# authentication method to check and verify if username/password combination exists
def auth_user(username, password, list_of_users = [])
	list_of_users.each do |user_record|
		if user_record[:username] == username && user_record[:password] == password
			return user_record
		end
	end
	"Credentials were not correct"
end

# program execution flow
puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attemps = 1

while attemps < 4 do
	print "Enter username: "
	username = gets.chomp
	print "Password: "
	password = gets.chomp
	authenticator = auth_user(username, password, users)
	puts(authenticator)
	puts "Press n to quit or any other key to continue: "
	input = gets.chomp.downcase
	break if input == "n"
	attemps += 1
end
puts "You have exceeded the number of attempts" if attemps == 4