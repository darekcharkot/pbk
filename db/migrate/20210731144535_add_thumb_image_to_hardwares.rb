class AddThumbImageToHardwares < ActiveRecord::Migration[6.0]
  def change
    add_column :hardwares, :thumb_image, :text
  end
end
