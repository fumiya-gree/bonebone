class CreateTraingContents < ActiveRecord::Migration
  def change
    create_table :traing_contents do |t|
      t.string :picture_1
      t.text :text_1
      t.string :picture_2
      t.text :text_2
      t.string :picture_3
      t.text :text_3
      t.text :point
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
