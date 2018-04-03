class RenameStartBreaktimeToWorktimes < ActiveRecord::Migration[5.1]
  def change
    rename_column :worktimes, :start_berktime, :start_breaktime
    rename_column :worktimes, :end_berktime, :end_breaktime
  end
end
