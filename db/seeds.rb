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
	Post.create(date: Date.today, rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris a tincidunt justo, eu viverra turpis. Nulla in mattis lorem. Praesent vitae finibus libero. In volutpat nisi massa, eu varius metus pharetra eu. In libero justo, aliquam vel lectus eget, varius vulputate urna. Suspendisse vitae nibh fringilla, molestie sem in, sollicitudin purus. Integer vel vestibulum turpis. Ut ac lectus eu erat eleifend auctor. In in porttitor mi. Praesent quis magna quis felis venenatis tempor ut et felis. Suspendisse elementum commodo tortor at sagittis. Praesent sit amet dignissim lacus. Nam sed consectetur nibh, eu tincidunt turpis.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 post has been created"

100.times do |audit_log|
	AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Audit Log has been created"