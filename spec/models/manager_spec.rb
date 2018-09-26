require 'rails_helper'

RSpec.describe Manager, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_most(255) }
  it { is_expected.to have_many(:zoos) }

  it { is_expected.to have_secure_password }
end

# == Schema Information
# Schema version: 20180926191222
#
# Table name: managers
#
#  id              :uuid             not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_managers_on_email  (email) UNIQUE
#
