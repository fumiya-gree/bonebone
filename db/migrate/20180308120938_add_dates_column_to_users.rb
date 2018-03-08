class AddDatesColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :date_mon, :integer
    add_column :users, :date_tue, :integer
    add_column :users, :date_wed, :integer
    add_column :users, :date_thu, :integer
    add_column :users, :date_fri, :integer
    add_column :users, :date_sat, :integer
    add_column :users, :date_sun, :integer
    # 月、火、水・・・
  end
end
