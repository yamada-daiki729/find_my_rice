class AddUniqueConstraintToRiceStatuses < ActiveRecord::Migration[6.1]
  def up
    remove_index :rice_statuses, :rice_id if index_exists?(:rice_statuses, :rice_id)
    add_index :rice_statuses, :rice_id, unique: true
  end

  def down
    remove_index :rice_statuses, :rice_id if index_exists?(:rice_statuses, :rice_id)
  end
end
