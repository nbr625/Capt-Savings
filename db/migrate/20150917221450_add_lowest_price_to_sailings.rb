class AddLowestPriceToSailings < ActiveRecord::Migration
  def change
    add_column :sailings, :starting_price, :integer
  end
end
