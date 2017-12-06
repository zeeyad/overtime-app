@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "john", last_name: "smith")

puts "1 User created"
100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 post has been created"