class Company < ApplicationRecord
	has_many :employees
	has_many :assets
end
