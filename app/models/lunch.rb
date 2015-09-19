class Lunch < ActiveRecord::Base

validates_presence_of :name, :price, :date, :meeting_time

  has_many :groups
  has_many :users,
    through: :groups
end
