class DanmukusController < ApplicationController
  def index
    @danmus = Danmuku.all

    #debugger

    render json: {
      code: 0,
      danmuku: @danmus}
  end

  def index2
    @danmukus = Danmuku.all

    #debugger
    @items = Array['time', 'type', 'color', 'author','text']

    @danmus = Array.new
    @danmu = Hash.new

    @danmukus.each_with_index do |danmuku, index|
    #debugger
      @items.each_with_index do |item, item_index|

        @danmu[item_index] = danmuku[item]
        if (item == 'type')
          @danmu[item_index] = 0
        end
      end

      @danmus[index] = @danmu
    end

    render json: {
      code: 0,
      danmaku: @danmus}
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
