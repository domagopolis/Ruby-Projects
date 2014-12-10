class CachedUrl < ActiveRecord::Base
	belongs_to :domain
	validates_presence_of :path
end
