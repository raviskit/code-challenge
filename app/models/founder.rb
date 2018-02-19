class Founder < ApplicationRecord
	belongs_to :company, inverse_of: :founders
  validates :full_name, :title, presence: true
end
