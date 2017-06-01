class AddStateToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :state, :string
  end
end
