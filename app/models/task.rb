class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  validates :name, presence: true
  validates :user_id, uniqueness: true
end
