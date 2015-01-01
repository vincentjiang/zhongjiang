class Cms::UsersController < CmsController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all.page(params[:page]).per(25)
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to cms_users_path, notice: '创建用户成功'
    else
      flash.now[:error] = @user.errors.full_messages.to_sentence
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: '修改用户成功'
    else
      flash.now[:error] = @user.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    begin
      @user.destroy
      flash[:notice] = "删除用户成功"
    rescue Exception => e
      flash[:error] = e.message
    end
    redirect_to cms_users_url
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)
    end
end
