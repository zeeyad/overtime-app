require 'rails_helper'

describe 'AuditLog Feature' do

	before do
		FactoryBot.create(:audit_log)
		@admin_user = FactoryBot.create(:admin_user)
		login_as(@admin_user, :scope => :user)
	end

	describe 'index' do
		it 'has an index page that can be reached' do
			visit audit_logs_path
			expect(page.status_code).to eq(200)
		end

		it 'renders audit log content' do

			visit audit_logs_path
			expect(page).to have_content(/JOHN/)
		end

		it 'can not be accessed  by non admin users' do
			logout(:user)
			user = FactoryBot.create(:user)
			login_as(user, :scope => :user)

			visit audit_logs_path
			expect(current_path).to eq(root_path)
		end

	end
end