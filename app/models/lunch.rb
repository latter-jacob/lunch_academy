class Lunch < ActiveRecord::Base

  validates_presence_of :name, :price, :date_time

  CATEGORIES = %w[italian american seafood sushi chinese thai vietnamese desserts bakery japanese hamburgers cajun pizza]
  validates :category, inclusion: { in: CATEGORIES }

  has_many :groups
  has_many :users,
    through: :groups
end
