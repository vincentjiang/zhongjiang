class User < ActiveRecord::Base
  self.table_name = "zj_users"

  has_secure_password

  validates :name, :password, presence: true
  validates :name, uniqueness: true

end
