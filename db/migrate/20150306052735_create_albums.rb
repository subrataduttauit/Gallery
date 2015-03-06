class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :user, index: true
      t.string :name
      t.text :about

      t.timestamps null: false
    end

    add_foreign_key :albums, :users
  end
end
