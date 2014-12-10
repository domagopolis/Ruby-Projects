class Domain < ActiveRecord::Base
	validates_presence_of :domain_url
end
