FactoryGirl.define do
  factory :user do
    sequence(:name) {|n| "user#{n}" }
    email { "#{name}@example.com" }
  end
end
