class AddColumnToWorktimes < ActiveRecord::Migration[5.1]
  def change
    add_column :worktimes, :work, :boolean, default: false
    add_column :worktimes, :active, :boolean, default: false
  end
end
