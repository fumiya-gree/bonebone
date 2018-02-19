class AddNicknameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :select_course, :integer
  end
end
