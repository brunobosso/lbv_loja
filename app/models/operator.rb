class Operator < ActiveRecord::Base
	belongs_to :sector

	validates :name, presence: true
end