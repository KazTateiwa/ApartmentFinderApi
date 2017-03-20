class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :apt
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country
      t.string :name
      t.string :phone
      t.string :hrs_contact

      t.timestamps
    end
  end
end
