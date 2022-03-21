class Admin::CustomersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

   def unsubscribe
    @user = User.find(params[:id])
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @user.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end
end
