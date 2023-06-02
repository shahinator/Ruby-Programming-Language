require_relative 'crud'

# $LOAD_PATH << "."
# require 'crud'

users=[
    {username: "shahin", password: "password1"},
    {username: "jack", password: "password2"},
    {username: "arya", password: "password4"},
    {username: "jonshow", password: "password4"},
    {username: "heisenberg", password: "password5"}
]
hasts_users = Crud.create_secure_users(users)
puts hasts_users 