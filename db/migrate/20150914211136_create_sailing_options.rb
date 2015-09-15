class CreateSailingOptions < ActiveRecord::Migration
  def change
    create_table :sailing_options do |t|
      t.integer :sailing_id
      t.integer :price
      t.string :date

      t.timestamps null: false
    end
  end
end
