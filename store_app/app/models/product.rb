class Product < ActiveRecord::Base
	  has_many :enrollments
  has_many :categories, through: :enrollments
end
