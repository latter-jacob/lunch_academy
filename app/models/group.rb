class Group < ActiveRecord::Base

validates_uniqueness_of :user_id, scope: :lunch_id

  belongs_to :lunches
  belongs_to :users
end
