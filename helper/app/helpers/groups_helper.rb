module GroupsHelper

	def update_member_count(group_id)

		#the group we're updating

		group = Group.find(group_id)


		#step 1 let's count the members

		#num_members = Group.find(group_id).members.count

		num_members = group.members.count

		#step 2 update the group

		group.num_members = num_members
		group.save

	end


end
