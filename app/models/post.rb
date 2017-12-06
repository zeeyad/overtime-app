class Post < ApplicationRecord
	enum status: { active: 0, approved: 1, rejected: 2}
	belongs_to :user
	validates_presence_of :date, :rationale
end
