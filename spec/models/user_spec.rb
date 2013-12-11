require 'spec_helper'

describe User do
	before(:each) do
    	@user = FactoryGirl.create(:user)
    	@user2 = FactoryGirl.create(:user)
		@group1 = FactoryGirl.create(:group)
		@group2 = FactoryGirl.create(:group)
	end

	it "can add groups with uniqeness validation" do
		@user.groups << @group1
		@user.groups << @group1
		@user.groups << @group2 

		expect(@user.groups.count).to eq (2)
	end

	it "can assign other users to own groups" do
		@user.groups << @group1
		Group.assign_to_group(@group1, @user2, @user)

		expect(@user2.groups).to eq ([@group1])
	end

	it "cannot assign other users to groups that he is not part of" do
		Group.assign_to_group(@group1, @user2, @user)

		expect(@user2.groups.count).to eq (0)
	end

end
