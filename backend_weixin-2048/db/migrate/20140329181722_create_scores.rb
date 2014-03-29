class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.column :value, :integer, :null => false

      t.timestamps
    end

    add_index :users, :id, { unique: true }
  end
end
