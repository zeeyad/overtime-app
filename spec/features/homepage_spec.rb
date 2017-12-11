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

	it 'allows the employee to change audit log status from the home page' do
		audit_log = FactoryBot.create(:audit_log)
		user = FactoryBot.create(:user)
		login_as(user, :scope => :user)
		audit_log.update(user_id: user.id)
		visit root_path

		click_on("confirm_#{audit_log.id}")
		expect(audit_log.reload.status).to eq('confirmed')
	end

end