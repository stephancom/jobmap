# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    latitude 1.5
    longitude 1.5
    notes "MyText"
    full_street_address "688 S. Santa Fe #207, Los Angeles, CA, 90021"
  end
end
