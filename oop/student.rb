require_relative 'crud'
require 'bcrypt'
class Student 
include Crud
    attr_accessor :first_name,  :last_name, :email, :username, :password
    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username 
        @email = email 
        @password = password
    end


    def to_s 
        "First Name : #{@first_name},
        Last Name : #{@last_name},
        Username : #{@username},
        Email : #{@email},
        Password : #{@password}"
    end

end
shahin = Student.new("shahin", "khan", "shahin@gmail.com", "shahinkhan", "password1")

john = Student.new("john", "doe", "john@gmail.com", "johndoe", "password2")

hashed_password = shahin.create_hash_digest(shahin.password)
puts hashed_password