class Company < ApplicationRecord
	has_many :founders, inverse_of: :company, dependent: :destroy
	has_many :tags, inverse_of: :company, dependent: :destroy
	validates :name, :city, :state, :description, presence: true
	accepts_nested_attributes_for :founders, reject_if: proc {|attributes| attributes['full_name'].blank? || attributes['title'].blank?}, allow_destroy: true
	accepts_nested_attributes_for :tags, reject_if: proc {|attributes| attributes[:name].blank?}, allow_destroy: true
end
