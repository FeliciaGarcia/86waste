class CreateBulkstores < ActiveRecord::Migration[5.0]
  def change
    create_table :bulkstores do |t|
      t.string :name
      t.text :description
      t.string :photourl
      t.string :website

      t.timestamps
    end
  end
end
