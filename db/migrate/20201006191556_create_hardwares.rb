class CreateHardwares < ActiveRecord::Migration[6.0]
  def change
    create_table :hardwares do |t|
      t.string :device_type, null: false, default: 'Laptop'
      t.string :device_model
      t.string :sn
      t.string :describe
      t.string :code_number
      t.string :purchase_price
      t.boolean :sold, null: false, default: 0
      t.string :procesor
      t.string :ram
      t.string :disk
      t.string :screen
      t.string :dvd
      t.string :video_card
      t.string :battery, default: 'używana'
      t.string :operating_system
      t.string :warranty, default: '3 miesiące'
      t.string :equipment
      t.datetime :date_of_purchase
      t.datetime :sale_date
      t.string :price
      t.text :information_for_us
      t.text :information_for_user

      t.timestamps
    end
  end
end
