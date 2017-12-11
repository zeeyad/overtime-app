@user = User.create!(email: "test@test.com", 
						password: "123456", 
						password_confirmation: "123456", 
						first_name: "john", 
						last_name: "smith",
						phone: "1234567890")

puts "1 User created"

@admin_user = User.create!(email: "admin@admin.com", 
							password: "123456", 
							password_confirmation: "123456", 
							first_name: "jack admin", 
							last_name: "smith", 
							type: "AdminUser",
							phone: "1234567890")

puts "1 Admin User created"
100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 post has been created"

100.times do |audit_log|
	AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Audit Log has been created"