class User < ActiveRecord::Base
  self.table_name = "zj_users"

  has_secure_password

  validates :name, :password, presence: true

  before_save :remain_at_least_one_amdin
  before_destroy :remain_at_least_one_amdin

  private
    def remain_at_least_one_amdin
      errors[:base] << "不能删除最后一位管理员" unless User.where(admin: true).empty?
    end

end
