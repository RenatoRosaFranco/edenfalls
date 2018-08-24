# frozen_string_sanatizer: true
class Album < ApplicationRecord
	self.table_name = 'albums'
	self.primary_key = 'id'

	has_many :musics, dependent: :nullify
  belongs_to :user

  validates :cover,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false

  validates :name,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
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
