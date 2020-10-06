json.extract! hardware, :id, :device_type, :device_model, :sn, :describe, :code_number, :purchase_price, :sold, :procesor, :ram, :disk, :screen, :dvd, :video_card, :battery, :operating_system, :warranty, :equipment, :date_of_purchase, :sale_date, :price, :created_at, :updated_at
json.url hardware_url(hardware, format: :json)
