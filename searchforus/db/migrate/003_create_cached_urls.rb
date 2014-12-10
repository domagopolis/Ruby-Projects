class CreateCachedUrls < ActiveRecord::Migration
  def self.up
    create_table :cached_urls do |t|
      t.string :path
      t.string :query
      t.timestamps
    end
  end

  def self.down
    drop_table :cached_urls
  end
end
