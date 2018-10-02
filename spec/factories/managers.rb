FactoryBot.define do
  factory :manager do
    name { "Pathe" }
    sequence :email do |n|
      "pathe#{n}@zoo.com"
    end
    password { "MyString" }
  end
end
