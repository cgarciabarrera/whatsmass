# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :receiver do
    phone "MyString"
    name "MyString"
    active false
    last_sent "2014-04-03 16:40:06"
    sex 1
  end
end
