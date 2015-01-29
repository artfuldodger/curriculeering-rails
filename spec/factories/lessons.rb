# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lesson do
    curriculum nil
    order "MyString"
    title "MyString"
    description "MyText"
    notes "MyText"
  end
end
