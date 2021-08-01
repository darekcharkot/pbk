class AddMainImageToHardwares < ActiveRecord::Migration[6.0]
  def change
    add_column :hardwares, :main_image, :text
  end
end
