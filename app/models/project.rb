class Project < ApplicationRecord
	has_many :tickets, dependent: :destroy
	has_many :states, dependent: :destroy
	has_and_belongs_to_many :users
	belongs_to :owner, :class_name => 'User'

  validates :owner, presence: true
  validates :name, presence: true

  accepts_nested_attributes_for :states

end
