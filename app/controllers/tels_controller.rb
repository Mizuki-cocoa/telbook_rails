class TelsController < ApplicationController
    def index
        @friend=Friend.find(params[:friend_id])
        @tels = Tel.order("id")
    end

    def show
        @friend=Friend.find(params[:friend_id])
        @tels = Tel.find(params[:id])
    end

    def new
        @tel = Tel.new()
    end

    # 新規作成
    def create
        @friend=Friend.find(params[:friend_id])
        @tel = @friend.tels.build(params[:tel])
        @tel.friend=@friend
        if @tel.save
            redirect_to request.referer, notice: "電話番号を登録しました。"
        else
            render 'new'
        end
    end

    # 削除
    def destroy
        @tel=Tel.find(params[:id])
        @tel.destroy
        redirect_to request.referer, notice: "電話番号を削除しました。"
    end
end
