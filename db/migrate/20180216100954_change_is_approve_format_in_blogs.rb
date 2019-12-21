class ChangeIsApproveFormatInBlogs < ActiveRecord::Migration
  def change
  	 change_column :blogs, :is_approve, :boolean, :default => false
  end
end
