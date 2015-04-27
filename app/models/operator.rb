class Operator < ActiveRecord::Base

	require 'digest/md5'

	belongs_to :sector

	validates :name, presence: true

	class << self 
		def md5_password(password)
			Digest::MD5.hexdigest(password)
		end
	end
end