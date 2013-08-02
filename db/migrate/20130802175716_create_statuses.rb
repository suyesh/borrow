class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :issue
      t.integer :amount_needed
      t.integer :user_id
      t.integer :wallet_id

      t.timestamps
    end
  end
end
