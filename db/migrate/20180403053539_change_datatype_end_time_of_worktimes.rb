class ChangeDatatypeEndTimeOfWorktimes < ActiveRecord::Migration[5.1]
  def change
    change_column :worktimes, :end_time, :datetime, nil:false, default:nil
    change_column :worktimes, :start_breaktime, :datetime, nil:false, default:nil
    change_column :worktimes, :end_breaktime, :datetime, nil:false, default:nil

  end
end
