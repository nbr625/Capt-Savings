class CreateSailings < ActiveRecord::Migration
  def change
    create_table :sailings do |t|
      t.string :name
      t.integer :cruise_id
      t.string :main_image

      t.timestamps null: false
    end
  end
end
