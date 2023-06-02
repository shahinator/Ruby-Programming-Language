users=[
    {username: "shahin", password: "password1"},
    {username: "jack", password: "password2"},
    {username: "arya", password: "password4"},
    {username: "jonshow", password: "password4"},
    {username: "heisenberg", password: "password5"}
]
def auth_user(username, password, list_of_users) 
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password 
            return user_record
            break
        end
    end

    "credential is not correct"
  
end
puts "Welcome to the Authenticator"
25.times {print"="}
puts 
puts "This program will take input from the user and compare password"
puts "if the password is correct, you will get back the user obejct"

attempts =1
while attempts < 4 
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password,users )
    puts authentication
    puts "Press n for quite or any other to continue"
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
puts "you have excedded the number of an attemps" if attempts ==4 