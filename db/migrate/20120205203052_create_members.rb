class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |table|
      table.string :name
      table.string :email
      table.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
