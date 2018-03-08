class RemoveDateColumnFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :date, :integer
  end
end
