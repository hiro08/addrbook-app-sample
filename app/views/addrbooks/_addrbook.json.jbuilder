json.extract! addrbook, :id, :code, :name, :kana, :postal_code, :address, :created_at, :updated_at
json.url addrbook_url(addrbook, format: :json)