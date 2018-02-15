class CreateDanmakus < ActiveRecord::Migration[5.1]
  def change
    create_table :danmakus do |t|
      t.string   :author
      t.string   :color
      t.string   :player
      t.string   :text
      t.string   :ip
      t.string   :referer
      t.float   :time
      t.string   :type


      t.timestamps
    end
  end
end
