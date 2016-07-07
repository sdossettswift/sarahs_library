class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo_url
      t.text :bio

      t.timestamps null: false
    end
  end
end
