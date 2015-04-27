FactoryGirl.define do
  factory :operator do
    sequence(:name) { |n| "Nome #{n}" }
    sequence(:email) { |n| "teste#{n}@teste.com" }
	sector    
  end
end
