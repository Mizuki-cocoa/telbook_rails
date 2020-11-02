class FriendsController < ApplicationController
  def index
    @friends = Friend.order("id").page(params[:page]).per(15)
  end

  def show
    @friend = Friend.find(params[:id])
    redirect_to "http://localhost:3000/friends/#{params[:id]}/tels"
  end

  def new
    @friend = Friend.new()
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def create
    params.permit!
    @friend=Friend.new(params[:friend])
    if @friend.save
      redirect_to @friend, notice: "友達を登録しました。"
    else
      render "new"
    end
  end

  def update
    @friend=Friend.find(params[:id])
    @friend.assign_attributes(params[:friend])
    if @friend.save
      redirect_to @friend, notice: "会員情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @friend=Friend.find(params[:id])
    @friend.destroy
    redirect_to :friends, notice: "友達を削除しました。"
  end
end