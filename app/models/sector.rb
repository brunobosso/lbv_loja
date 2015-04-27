class Sector < ActiveRecord::Base
	has_one :operator

	validates :name, presence: true
end