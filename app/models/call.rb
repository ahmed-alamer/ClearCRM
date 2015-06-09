class Call < ActiveRecord::Base
	belongs_to :contact
	belongs_to :employee
end
