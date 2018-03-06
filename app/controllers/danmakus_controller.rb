class DanmakusController < ApplicationController
  def index
    @danmakus = Danmaku.all

    #debugger

    render json: {
      code: 0,
      danmaku: @danmakus
    }
  end

  def index2

    #item =  Array["player" => params.permit(:id)['id']]
    #debugger
    #@danmakus = danmakuv2(Danmaku.all)
    @danmakus = danmakuv2(Danmaku.where("player = ?", params[:id]))
    render json: {
      code: 0,
      danmaku: @danmakus
    }
  end

  def create
    @danmaku = Danmaku.new(params.permit(:author, :color, :player, :text, :time, :type))
    #debugger
    @danmaku.ip = request.remote_ip
    @danmaku.referer = request.env["HTTP_REFERER"]

    #debugger
    code, msg = post_filter

    debugger
    if code
      @danmaku.save
      render json: {
        code: 0,
        data: @danmaku
      }
    else
      render json: {
        code: -2,
        msg: "Rejected for frequent operation."
      }
    end
  end

  def danmakuv2(danmakus)

    #debugger
    items = ['time', 'type', 'color', 'author','text']

    typeMap = {
      "right" => 0,
      "top" => 1,
      "bottom" => 2
    }

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

  def post_filter
    # check black ip
#   {"code": -1, "msg": "Rejected for black ip."}
#
    # frequency limitation
    if Danmaku.last.ip == request.remote_ip
      if Time.now - Danmaku.last.created_at < 1
        #debugger
        return -2, "Rejected for frequent operation."
      end
    end

    return 1
  end

end
