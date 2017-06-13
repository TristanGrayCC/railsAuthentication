class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.text :name
      t.integer :year
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
