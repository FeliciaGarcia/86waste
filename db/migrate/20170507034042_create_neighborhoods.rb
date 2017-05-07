class CreateNeighborhoods < ActiveRecord::Migration[5.0]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :description
      t.varchar :photourl

      t.timestamps
    end
  end
end
