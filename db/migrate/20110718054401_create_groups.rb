class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.integer :total_expense
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
