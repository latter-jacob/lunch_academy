class Lunch < ActiveRecord::Base

  validates_presence_of :name, :price, :date_time

  CATEGORIES = %w[¯\\_(ツ)_/¯ italian american seafood sushi chinese thai vietnamese desserts bakery japanese hamburgers cajun pizza other]
  validates :category, inclusion: { in: CATEGORIES, allow_blank: true }

  has_many :groups
  has_many :users,
    through: :groups
end
