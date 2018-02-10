class DanmakusController < ApplicationController
  def index
    @danmakus = Danmaku.all

    #debugger

    render json: {
      code: 0,
      danmaku: @danmakus}
  end

  def index2
    #@danmakus = Danmaku.all
    @danmakus = danmakuv2(Danmaku.all)
    render json: {
      code: 0,
      danmaku: @danmakus
    }
  end

  def create
    @danmaku = Danmaku.new(params.permit(:author, :color, :player, :text, :time, :type))
    #debugger
    #@danmu = Danmuku.new(params[:post])
    #@danmu.danmu_type = params[:type]
    @danmaku.save
    render json: {
      code: 0,
      data: @danmaku
    }
  end

  def danmakuv2(danmakus)

    #debugger
    items = Array['time', 'type', 'color', 'author','text']

    typeMap = Hash[
      "right" => 0,
      "top" => 1,
      "bottom" => 2
    ]

    danmus = Array.new

    danmakus.each_with_index do |danmaku, index|
      #debugger
      dan = Hash.new
      items.each_with_index do |item, item_index|

        dan[item_index] = danmaku[item]
        if (item == 'type')
          dan[item_index] = typeMap[danmaku[item]]
        end
      end

      danmus[index] = dan
    end

    return danmus
  end

end
