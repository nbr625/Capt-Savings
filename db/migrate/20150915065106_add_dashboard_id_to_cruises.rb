class AddDashboardIdToCruises < ActiveRecord::Migration
  def change
    add_column :cruises, :dashboard_id, :integer
  end
end
