require 'rails_helper'

RSpec.describe Animal, type: :model do
  it { is_expected.to belong_to(:family) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_most(255) }
end

# == Schema Information
# Schema version: 20180923161835
#
# Table name: animals
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  family_id  :uuid
#
# Indexes
#
#  index_animals_on_family_id  (family_id)
#
# Foreign Keys
#
#  fk_rails_...  (family_id => families.id)
#
