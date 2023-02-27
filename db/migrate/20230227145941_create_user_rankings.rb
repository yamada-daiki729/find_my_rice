class CreateUserRankings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_rankings do |t|
      t.integer :rank
      t.references :user, null: false, foreign_key: true
      t.references :rice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
