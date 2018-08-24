class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table   :musics do |t|
      t.string     :name
      t.string     :description
      t.text       :content
      t.string     :slug
      t.string     :tags
      t.references :album, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
