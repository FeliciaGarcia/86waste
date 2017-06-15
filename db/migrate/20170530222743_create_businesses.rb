class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :description
      t.string :street
      t.string :city
      t.integer :zipcode
      t.decimal :longitude
      t.decimal :latitude
      t.string :photourl
      t.string :website

      t.timestamps
    end
  end
end
