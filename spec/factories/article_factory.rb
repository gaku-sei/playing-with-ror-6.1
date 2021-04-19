FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "Super title (#{n})" }
    sequence(:body) { |n| "And a body (#{n})" }
  end
end
