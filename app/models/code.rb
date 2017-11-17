class Code < ApplicationRecord
	validates_length_of :code, :is => 6
	validates :code, uniqueness: true
end
