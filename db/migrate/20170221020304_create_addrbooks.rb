class CreateAddrbooks < ActiveRecord::Migration
  def change
    create_table :addrbooks do |t|
      t.string :code
      t.string :name
      t.string :kana
      t.string :postal_code
      t.string :address

      t.timestamps null: false
    end
  end
end
