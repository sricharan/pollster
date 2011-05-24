class CreatePolls < ActiveRecord::Migration
  def self.up
    create_table :polls do |t|
      t.string :question
      t.string :opt1
      t.string :opt2
      t.string :opt3
      t.integer :opt_count1
      t.integer :opt_count2
      t.integer :opt_count3

      t.timestamps
    end
  end

  def self.down
    drop_table :polls
  end
end
