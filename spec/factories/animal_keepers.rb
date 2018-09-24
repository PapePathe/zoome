FactoryBot.define do
  factory :animal_keeper do
    first_name { FFaker::NameFR.first_name }
    last_name { FFaker::NameFR.last_name }
    job { FFaker::Job.title }
    birth_date { "2018-09-24" }
  end
end
