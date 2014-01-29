class Category < ActiveRecord::Base
	has_many :enrollments
  has_many :products, through: :enrollments
end
