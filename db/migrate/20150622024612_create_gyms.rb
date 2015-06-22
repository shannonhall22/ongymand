class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :website
      t.string :email
      t.string :rate
      t.string :image_url

      t.timestamps null: false
    end
  end
end
