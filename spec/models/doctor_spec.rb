require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_most(255) }
end

# == Schema Information
# Schema version: 20180923152356
#
# Table name: doctors
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  zoo_id     :uuid
#
# Indexes
#
#  index_doctors_on_zoo_id  (zoo_id)
#
# Foreign Keys
#
#  fk_rails_...  (zoo_id => zoos.id)
#
