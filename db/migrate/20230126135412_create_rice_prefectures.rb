class CreateRicePrefectures < ActiveRecord::Migration[6.1]
  def change
    create_table :rice_prefectures do |t|
      t.references :rice, null: false, foreign_key: true
      t.references :prefecture, null: false , foreign_key: true

      t.timestamps
    end
  end
end
