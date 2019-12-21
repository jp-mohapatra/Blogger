class AddSlugToBlogs < ActiveRecord::Migration
  def up
  	add_column :blogs, :slug, :string, unique: true
  end

  def down
  	remove_column :blogs, :slug,:string, unique: true
  end
end
