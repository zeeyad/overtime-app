FactoryBot.define do

	sequence :email do |n|
		"test#{n}@example.com"
	end

	factory :user do
		first_name 'John'
		last_name 'Smith'
		email { generate :email }
		password "asdfasdf"
		password_confirmation "asdfasdf"
		phone "5555555555"
	end

	factory :admin_user, class: "AdminUser" do
		first_name 'John'
		last_name 'Smith'
		email { generate :email }
		password "asdfasdf"
		password_confirmation "asdfasdf"
		phone "5555555555"
	end

	factory :non_authorized_user, class: "User" do
		first_name 'Non'
		last_name 'Authorized'
		email { generate :email }
		password "asdfasdf"
		password_confirmation "asdfasdf"
		phone "5555555555"
	end
end
