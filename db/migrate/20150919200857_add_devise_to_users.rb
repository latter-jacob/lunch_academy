class AddDeviseToUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :email

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip
      t.string   :provider, null: false
      t.string   :uid, null: false
      t.string   :image
      t.string   :name

      t.timestamps null: false
    end
  end
end
