class Student < ActiveRecord::Base
	validates :name, :presence => true
	validates :student_class, :presence => true
	validates :marks, :presence => true
	validates :description, :presence => true 

end
