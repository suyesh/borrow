class CreateUserWallets < ActiveRecord::Migration
  def change
    create_table :user_wallets do |t|
      t.integer :balance
      t.integer :lended
      t.integer :borrowed
      t.integer :payedback
      t.integer :owed
      t.integer :disputes
      t.integer :interest_rate
      t.integer :other_fees
      t.integer :user_id
      t.integer :status_id

      t.timestamps
    end
  end
end