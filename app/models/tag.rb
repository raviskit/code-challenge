class Tag < ApplicationRecord
	belongs_to :company, inverse_of: :tags
	validates :name, presence: true
end
