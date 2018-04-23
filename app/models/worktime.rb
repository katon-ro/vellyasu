class Worktime < ApplicationRecord
  belongs_to :user, optional: true
  default_scope -> { order(created_at: :desc) }
end
