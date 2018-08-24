class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table   :albums do |t|
      t.string     :cover
      t.string     :name
      t.string     :description
      t.string     :slug
      t.string     :tags
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
