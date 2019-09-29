class Code < ApplicationRecord
	validates_length_of :name, is: 6
	validates :name, uniqueness: true
end
