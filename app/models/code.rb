class Code < ApplicationRecord
	validates_length_of :code, :is => 6
end
