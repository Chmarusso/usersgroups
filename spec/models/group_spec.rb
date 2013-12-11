require 'spec_helper'

describe Group do
	it "can save to db" do
		group = FactoryGirl.create(:group)
		expect(group.id).to eq(1)
	end
end
