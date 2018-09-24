class AnimalKeeper < ApplicationRecord
  belongs_to :zoo

  validates :first_name, :last_name, :job,
    presence: true,
    length:   { maximum: 255 }

  validates :birth_date,
    presence: true
end

# == Schema Information
# Schema version: 20180924220230
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
