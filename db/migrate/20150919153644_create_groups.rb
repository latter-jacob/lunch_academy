class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.belongs_to :user, null: false
      t.belongs_to :lunch, null: false
      t.string :name, null: false
    end
  end
end
