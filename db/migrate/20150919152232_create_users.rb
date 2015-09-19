class CreateUsers < ActiveRecord::Migration
 def change
   create_table :users do |t|
     t.string :provider, null: false
     t.string :uid, null: false
     t.string :username, null: false
     t.string :email, null: false
     t.string :avatar_url, null: false

     t.timestamps null: false
   end

   add_index :users, [:uid, :provider], unique: true
 end
end
