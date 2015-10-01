class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :location
      t.string :category
      t.string :price, null: false
      t.date :date, null: false
      t.datetime :time, null: false
      t.string :description
      t.string :name, null: false
      t.timestamps
    end
  end
end
