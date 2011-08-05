class CreateMapAuthors < ActiveRecord::Migration
  def self.up
    create_table :map_authors do |t|
      t.string :nick
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :map_authors
  end
end
