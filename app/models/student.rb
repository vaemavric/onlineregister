class Student < ApplicationRecord
	has_many :comments, :dependent => :destroy
end
