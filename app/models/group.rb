class Group < ActiveRecord::Base
	has_and_belongs_to_many :users, -> { uniq }

	def self.assign_to_group(group, user, assigner)
		user.groups << group if assigner.is_in_group?(group)
	end


end
