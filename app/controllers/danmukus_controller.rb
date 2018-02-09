class DanmukusController < ApplicationController
  def index
    @danmus = Danmuku.all

    #debugger

    render json: @danmus
  end

  def create
    @danmu = Danmuku.new(params.permit(:author, :color, :player, :text, :time, :type))
    #debugger
    #@danmu = Danmuku.new(params[:post])
    #@danmu.danmu_type = params[:type]
    @danmu.save
    render json: @danmu

  end
end
