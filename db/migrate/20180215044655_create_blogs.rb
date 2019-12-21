class CreateBlogs < ActiveRecord::Migration
  def up
    create_table :blogs do |t|
      t.string     :title
      t.text       :description
      t.boolean    :is_approve
      t.belongs_to  :user, index: true
      t.timestamps null: false
    end
  end

  def down
  	drop_table  :blogs
  end
end
