require 'rails_helper'

RSpec.describe AnimalKeeper, type: :model do
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:birth_date) }
  it { is_expected.to validate_presence_of(:job) }

  it { is_expected.to validate_length_of(:first_name).is_at_most(255) }
  it { is_expected.to validate_length_of(:last_name).is_at_most(255) }
  it { is_expected.to validate_length_of(:job).is_at_most(255) }
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
