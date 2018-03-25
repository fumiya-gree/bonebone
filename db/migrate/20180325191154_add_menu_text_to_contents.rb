class AddMenuTextToContents < ActiveRecord::Migration
  def change
    add_column :contents, :menu_name_1_text, :string
    add_column :contents, :menu_name_2_text, :string
    add_column :contents, :menu_name_3_text, :string
  end
end
