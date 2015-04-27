FactoryGirl.define do 
	factory :sector do
		sequence(:name) { |n| "Setor #{n}"}
	end	
end