class CreateComments < ActiveRecord::Migration
 def up
    create_table :comments do |t|
      t.belongs_to :blog, index: true
      t.text :comment
      t.string :created_by
      t.timestamps null: false
    end
  end

  def down
  	drop_table :comments
  end
end
