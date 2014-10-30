FactoryGirl.define do
  factory :post do
    title "MyString"
    body "MyText"
    published_at { Time.now }
    user
  end
end
