class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end
end
