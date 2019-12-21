class CreatePhotos < ActiveRecord::Migration
  def up
    create_table :photos do |t|
      t.belongs_to :blog, index: true
      t.attachment :photo
      t.timestamps null: false
    end
  end

  def down
  	drop_table :photos
  end
end
