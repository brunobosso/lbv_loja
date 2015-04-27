FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Produto #{n}" }
    url_image "http://www.boavontade.com"
	categories {[FactoryGirl.create(:category),FactoryGirl.create(:category)]}
  end
end
