class Group < ActiveRecord::Base

validates_presence_of :user_id, :lunch_id
validates_uniqueness_of :user_id, scope: :lunch_id

  belongs_to :lunches
  belongs_to :users
end
