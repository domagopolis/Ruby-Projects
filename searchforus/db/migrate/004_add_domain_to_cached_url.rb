class AddDomainToCachedUrl < ActiveRecord::Migration
  def self.up
    change_table :cached_urls do |t|
      t.integer :domain_id
    end
  end

  def self.down
    change_table :cached_urls do |t|
      t.remove :domain_id
    end
  end
end
