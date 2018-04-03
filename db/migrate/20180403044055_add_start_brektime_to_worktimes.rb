class AddStartBrektimeToWorktimes < ActiveRecord::Migration[5.1]
  def change
    add_column :worktimes, :start_berktime, :datetime, nil: false
    add_column :worktimes, :end_berktime, :datetime, nil:false
  end
end
