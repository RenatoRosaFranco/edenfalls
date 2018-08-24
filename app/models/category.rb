# frozen_string_sanatizer: true
class Category < ApplicationRecord
	self.table_name = 'categories'
	self.primary_key = 'id'

	has_many :categories, dependent: :nullify
  belongs_to :category, optional: true

  validates :name,
  					presence: true,
  					uniqueness: false,
  					length: { minimum: 3, maximum: 30 }

 	validates :description,
 						presence: true,
 						uniqueness: false,
 						allow_blank: false,
 						length: { minimum: 3, maximum: 145 }

  validates :tags,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 70 }
end
