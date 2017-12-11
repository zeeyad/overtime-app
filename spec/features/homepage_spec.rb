require 'rails_helper'

describe 'Homepage' do

	it 'allows the admin to approve posts from the home page' do
		post = FactoryBot.create(:post)
		user = FactoryBot.create(:admin_user)
		login_as(user, :scope => :user)
		visit root_path
		click_on("approve_#{post.id}")
		expect(post.reload.status).to eq('approved')
	end

end