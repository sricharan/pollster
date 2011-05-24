class AddDefaultValueToPolls < ActiveRecord::Migration
  def self.up
    change_column :polls , :opt_count1 ,:integer, :default => 0
    change_column :polls , :opt_count2 ,:integer, :default => 0
    change_column :polls , :opt_count3 ,:integer, :default => 0
  end

  def self.down
    change_column :polls , :opt_count1
    change_column :polls , :opt_count2
    change_column :polls , :opt_count3
  end
end
