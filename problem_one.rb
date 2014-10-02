#Read about Ruby’s times iterator on the web. Once you have a grasp of what it
#does, use it to populate an array named data with 100 hashes of the following 
#format

# format should be something like this 10.times {|i| puts "#{i}"}

#okay so what the below does is this: it sets up an empty array called data. Then, it uses the times iterator to complete
#the code block 100 times. That code block uses the throw-away variable num to pass through the array. the user_details is hash
# has the user details in it, but stored_tweets is an array because we don't need a key / value pair.
#Then we combined it to have a hash with the user_details hash and the stored_tweets array together.
#Then, we used data.push to push the info from the user_hash into the data array.

data = []

100.times do |num|
	user_details = {id: num, email: "user1_gmail.com", age: rand(18.75)}
	stored_tweets = ["I'm user #{num}", "This my second tweet!"]
	user_hash = {user: user_details, tweets: stored_tweets}	
	data.push(user_hash)
end

puts "================"
puts "user_#{data[2][:user][:id]}'s tweets"
puts "================"

puts data[2][:tweets]

#this puts out the tweets... but not the tweets: bit ugh le sigh

