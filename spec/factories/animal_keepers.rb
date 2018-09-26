FactoryBot.define do
  factory :animal_keeper do
    first_name { FFaker::NameFR.first_name }
    last_name { FFaker::NameFR.last_name }
    job { FFaker::Job.title }
    birth_date { "2018-09-24" }
  end
end

# == Schema Information
# Schema version: 20180926191222
#
# Table name: animal_keepers
#
#  id         :uuid             not null, primary key
#  birth_date :date
#  first_name :string
#  job        :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  zoo_id     :uuid
#
# Indexes
#
#  index_animal_keepers_on_zoo_id  (zoo_id)
#
# Foreign Keys
#
#  fk_rails_...  (zoo_id => zoos.id)
#
