class TelsController < ApplicationController
    #before_action :login_required
    # 会員一覧
    def index
        @tels = Tel.order("id").page(params[:page]).per(15)
    end
    
    # 会員情報の詳細
    def show
        @tel = Tel.find(params[:id])
    end
    
    def new
        @tel = Tel.new()
    end
    
    def edit
        @tel = Tel.find(params[:id])
    end
    
    def create
        params.permit!
        @tel=Tel.new(params[:tel])
        if @tel.save
        redirect_to @tel, notice: "会員を登録しました。"
        else
        render "new"
        end
    end
    
    def update
        params.permit!
        @tel=Tel.find(params[:id])
        @tel.assign_attributes(params[:tel])
        if @tel.save
        redirect_to @tel, notice: "会員情報を更新しました。"
        else
        render "edit"
        end
    end
    
    def destroy
        @tel=Tel.find(params[:id])
        @tel.destroy
        redirect_to :tels, notice: "会員を削除しました。"
    end
end
