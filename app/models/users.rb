class Users < ActiveRecord::Base
	validates_uniqueness_of :email

  has_many :statuses
  has_one :user_wallet
end
