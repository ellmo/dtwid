class CreatePrivacyLevels < ActiveRecord::Migration
  def self.up
    create_table :privacy_levels do |t|
      t.integer :level
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :privacy_levels
  end
end
