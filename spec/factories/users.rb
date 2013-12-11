# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	sequence :email do |n| 
		"email#{n}@factory.com"
	end 

	factory :user do
		email
		password "123123123123"
		password_confirmation { "123123123123" }
	end
end
