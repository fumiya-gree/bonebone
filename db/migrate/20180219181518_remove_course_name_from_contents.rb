class RemoveCourseNameFromContents < ActiveRecord::Migration
  def change
    remove_column :contents, :course_name, :string
    remove_column :contents, :menu1, :string
    remove_column :contents, :menu2, :string
  end
end
