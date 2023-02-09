class CreateRiceFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :rice_favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :rice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
