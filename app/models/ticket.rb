class Ticket < ApplicationRecord
	belongs_to :project
	has_many :comments

	accepts_nested_attributes_for :comments

end
