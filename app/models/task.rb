class Task < ActiveRecord::Base
  # has_many :assignments
  # has_many :projects, through: :assignments
  # validates :first_name, :last_name, presence: true
  belongs_to :projects
  validates :name, presence: true
  validates :user_id, uniqueness: true
end
