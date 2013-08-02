class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :usernmae
      t.string :password
      t.string :email
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :city
      t.string :zipcode
      t.string :drivers_licence
      t.string :ssn
      t.integer :user_wallet_id
      t.integer :status_id

      t.timestamps
    end
  end
end
