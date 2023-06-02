dial_book ={
    "newyork" => "212",
    "edition" => "234",
    "burgek" => "235",
    "roger" => "123",
    "evanato" => "236",
    "lancaser" => "127",
    "aurju" => "111"
}
#get city name from hash 
def get_city_name(somehash)
    somehash.keys
end
#get city area code from hash 
def get_area_code(somehash, key)
    somehash[key]
end

#loop code 
loop do 
    #write condition here
    puts "Do you want to lookup an area code based on a city? (Y/N)"
    answer =gets.chomp.downcase 
    break if answer != "y"
    puts "which city do you want to loopup the areacode?"
    puts get_city_name(dial_book)
    puts "enter your selection?"
    promt = gets.chomp 
    if dial_book.include?(promt)
        puts "The area code for #{get_area_code(dial_book, promt)}"
    else
        puts "you enter invalid city name"
    end
end
