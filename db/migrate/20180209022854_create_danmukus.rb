class CreateDanmukus < ActiveRecord::Migration[5.1]
  def change
    create_table :danmukus do |t|
      t.string   :author
      t.string   :color
      t.string   :player
      t.string   :text
      t.float   :time
      t.string   :type


      t.timestamps
    end
  end
end
