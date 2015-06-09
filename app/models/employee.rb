class Employee < ActiveRecord::Base
	has_many :calls
	has_many :emails
	has_many :notes
	has_many :cases
end
