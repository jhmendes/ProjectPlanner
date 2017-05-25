class User < ActiveRecord::Base
  has_many :assignments
  has_many :projects, through: :assignments
  validates :first_name, :last_name, presence: true
end
