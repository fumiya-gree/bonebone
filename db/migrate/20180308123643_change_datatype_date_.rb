class ChangeDatatypeDate < ActiveRecord::Migration
  def change
    change_column :users, :date_mon, :string
    change_column :users, :date_tue, :string
    change_column :users, :date_wed, :string
    change_column :users, :date_thu, :string
    change_column :users, :date_fri, :string
    change_column :users, :date_sat, :string
    change_column :users, :date_sun, :string
  end
end
