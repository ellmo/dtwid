class CreateAdminGalleryImages < ActiveRecord::Migration
  def self.up
    create_table :gallery_images do |t|
      t.integer :user_id
      t.string :title
      t.string :image_url
      t.string :thumbnail_url

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_gallery_images
  end
end
