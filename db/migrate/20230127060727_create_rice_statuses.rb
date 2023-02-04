class CreateRiceStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :rice_statuses do |t|
      t.references :rice, null: false, foreign_key: true
      t.integer :hardness
      t.integer :softness
      t.integer :sweetness
      t.integer :freshness

      t.timestamps
    end
  end
end
