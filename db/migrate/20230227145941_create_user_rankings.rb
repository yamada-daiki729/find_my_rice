class CreateUserRankings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_rankings do |t|
      t.integer :rank, null:false
      t.references :user, null: false, foreign_key: true
      t.references :rice, null: false, foreign_key: true

      t.timestamps
    end
    add_index :user_rankings, [:rank, :user_id, :rice_id], unique: true
    add_index :user_rankings, [:rank, :user_id], unique: true
    add_index :user_rankings, [:user_id, :rice_id], unique: true
  end
end
