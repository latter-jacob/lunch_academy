class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :location
      t.string :category
      t.string :price, null: false
      t.datetime :date_time, null: false
      t.string :description
      t.string :name, null: false
      t.timestamps
    end
  end
end
