# frozen_String_sanatizer: true
class Music < ApplicationRecord
	self.table_name = 'musics'
	self.primary_key = 'id'

  belongs_to :album
  belongs_to :user
	
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

	validates :content,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 4_000 }

	validates :tags,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 70 }
end
