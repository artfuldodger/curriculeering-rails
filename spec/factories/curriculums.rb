FactoryGirl.define do
  factory :curriculum do
    sequence(:title) { |n| "Curriculum #{n}" }
  end
end
