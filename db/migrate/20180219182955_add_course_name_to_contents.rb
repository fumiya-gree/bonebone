class AddCourseNameToContents < ActiveRecord::Migration
  def change
    add_column :contents, :course_name, :string
    add_column :contents, :menu_name_1, :string
    add_column :contents, :menu_name_2, :string
    add_column :contents, :menu_name_3, :string
  end
end
