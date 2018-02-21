class AddAllHalfUserIdToProgresses < ActiveRecord::Migration
  def change
    add_column :progresses, :progress, :integer
    add_column :progresses, :user_id, :integer
  end
end
