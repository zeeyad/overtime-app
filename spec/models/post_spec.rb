require 'rails_helper'

RSpec.describe Post, type: :model do

  describe "creation" do

  	before do
      @user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "john", last_name: "smith", phone: "555555555")
      login_as(@user, :scope => :user)
  		@post = FactoryBot.create(:post)
  	end

  	it 'can be created' do
  		expect(@post).to be_valid
  	end

  	it 'can not be created without a date and rationale and overtime request' do
  		@post.date = nil
  		@post.rationale = nil
      @overtime_request = nil
  		expect(@post).to_not be_valid
  	end

    it 'has a overtime request greater than 0.0' do
      @post.overtime_request = 0.0
      expect(@post).to_not be_valid
    end

  end

end
