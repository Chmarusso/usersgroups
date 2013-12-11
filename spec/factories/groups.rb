# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	sequence(:name) do |n| 
		"Group #{n}"
	end

	factory :group do
		name
	end
end
