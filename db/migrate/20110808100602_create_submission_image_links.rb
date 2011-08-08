class CreateSubmissionImageLinks < ActiveRecord::Migration
  def self.up
    create_table :submission_image_links do |t|
      t.integer :submission_id
      t.string :link

      t.timestamps
    end
  end

  def self.down
    drop_table :submission_image_links
  end
end
