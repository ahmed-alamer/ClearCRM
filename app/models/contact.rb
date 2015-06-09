class Contact < ActiveRecord::Base
	belongs_to :account
	has_many :calls
	has_many :notes
	has_many :emails
	has_many :cases
end
