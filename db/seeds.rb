@user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "john", last_name: "smith")

puts "1 User created"

@admin_user = User.create(email: "admin@admin.com", password: "123456", password_confirmation: "123456", first_name: "jack admin", last_name: "smith", type: "AdminUser")

puts "1 Admin User created"
100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 post has been created"