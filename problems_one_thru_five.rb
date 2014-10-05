#part 1

# format should be something like this 10.times {|i| puts "#{i}"}

#okay so what the below does is this: it sets up an empty array called data. Then, it uses the times iterator to complete
#the code block 100 times. That code block uses the throw-away variable num to pass through the array. the user_details is hash
# has the user details in it, but stored_tweets is an array because we don't need a key / value pair.
#Then we combined it to have a hash with the user_details hash and the stored_tweets array together.
#Then, we used data.push to push the info from the user_hash into the data array.

data = []

100.times do |num|
	user_details = {id: num, email: "user1_gmail.com", username: "user_#{num}", age: rand(18..75)}
	stored_tweets = ["I'm user #{num}", "This my second tweet!"]
	user_hash = {user: user_details, tweets: stored_tweets}	
	data.push(user_hash)
end

#part 2 okay so here's where part two starts. not sure if there's a better way to do the railroad tracks

puts "================"
puts "user_#{data[2][:user][:id]}'s tweets"
puts "================"

#this is the one block of code using the .each. Looking in the data array then in the user hash section tweets for the tweets. Using the dummy variable chirp so that there's a variable to iterate thru the hash with

data[2][:tweets].each do |chirp|
	puts "tweet: #{chirp}"
end

# part 3
# okay so the reverse! is reverse bang to the array
#it permanently reverses the elements in the array. danger danger will robinson.

data.reverse!

#part 4 the find_index instance method
#used doc here: http://www.ruby-doc.org/core-2.1.3/Array.html#method-i-find_index
#this sets a variable called index_number to be equal to to the .find_index block that goes from the data array into the user_hash hash
#and it pulls the index value for the specified element - in this case 2 because we set the user_id variable to 2.

user_id = 2
index_number = data.find_index { |x| x [:user][:id] == user_id}
puts "user_2 is at index #{index_number} in the data array"

#part the fifth. Search data for users betwen 18 to 25 and print their usernames and ages. Still fiddling.
#Need a way to limit it to only those 18 to 25 since originally it was 18 to 75.

# first, declaring that the ages in the variable users_ages can only be in the range from 18 to 25
users_ages = (18..25)

#this prints out the format for the search results as a quasi table thing.
puts "SEARCH RESULTS"
puts "Username        Age"
puts "========        ====="

#this bit should be looking through the array named data and selecting any element in that array where the age field is between 18-25.
# the spacing is weird when it prints out a little.

data.select {|y| users_ages.include?(y[:user][:age])}.each {|y| puts "#{y[:user][:username]}          #{y[:user][:age]}"} 


