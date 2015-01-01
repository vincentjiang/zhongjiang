class User < ActiveRecord::Base
  self.table_name = "zj_users"
  has_secure_password

  validates :name, presence: true
  validates :password, presence: true, on: :create
  validates :name, uniqueness: true
  validates :name, length: { in: 5..20 }
  validates :password, length: { in: 5..20 }, on: :create
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "格式不正确"  }
  after_destroy :at_least_one_user
  after_destroy :at_least_one_admin

  scope :admins, -> { where(admin: true) }

  def admin?
    admin == true
  end

  private
    def at_least_one_user
      raise "不能删除最后一位用户" if User.count.zero?
    end

    def at_least_one_admin
      raise "系统必须存在一位管理员" if User.admins.count.zero?
    end

end
