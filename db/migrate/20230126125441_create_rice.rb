class CreateRice < ActiveRecord::Migration[6.1]
  def change
    create_table :rice do |t|
      t.string :name, null:false
      t.string :characteristic

      t.timestamps
    end
  end
end
