class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :location
      t.string :category
      t.string :price, null: false
      t.datetime :date, null: false
      t.datetime :meeting_time, null: false
      t.string :description
      t.timestamps
    end
  end
end
