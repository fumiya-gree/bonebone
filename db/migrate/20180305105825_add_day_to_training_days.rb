class AddDayToTrainingDays < ActiveRecord::Migration
  def change
    add_column :training_days, :user_id, :integer
    add_column :training_days, :training_days, :string
    # 月、火、水・・・
  end
end
