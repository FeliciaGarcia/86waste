class DropBusiness < ActiveRecord::Migration[5.0]
  def change
  	drop_table :business
  end
end
