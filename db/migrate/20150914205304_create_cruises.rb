class CreateCruises < ActiveRecord::Migration
  def change
    create_table :cruises do |t|
      t.string :name
      t.string :ship_name

      t.timestamps null: false
    end
  end
end
