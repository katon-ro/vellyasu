class CreateWorktimes < ActiveRecord::Migration[5.1]
  def change
    create_table :worktimes do |t|
      t.string :username, nil: false
      t.datetime :str_time, nil: false
      t.datetime :end_time, nil: false

      t.timestamps
    end
  end
end
