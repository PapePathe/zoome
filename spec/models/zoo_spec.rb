require 'rails_helper'

RSpec.describe Zoo, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_most(255) }
  it { is_expected.to belong_to(:manager) }
  it { is_expected.to have_many(:doctors) }
  it { is_expected.to have_many(:animal_keepers) }
end

# == Schema Information
# Schema version: 20180923152356
#
# Table name: zoos
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  manager_id :uuid
#
# Indexes
#
#  index_zoos_on_manager_id  (manager_id)
#
# Foreign Keys
#
#  fk_rails_...  (manager_id => managers.id)
#
