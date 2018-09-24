require 'rails_helper'

RSpec.describe Family, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_most(255) }
end

# == Schema Information
# Schema version: 20180923161835
#
# Table name: families
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
