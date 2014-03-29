class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string, :null => false
      t.column :best_score, :integer, :default => 0
      t.column :last_score, :integer, :default => 0

      t.timestamps
    end

    create_join_table :users, :users, table_name: :friendship
  end
end
