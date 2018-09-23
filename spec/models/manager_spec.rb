require 'rails_helper'

RSpec.describe Manager, type: :model do

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_most(255) }
  it { is_expected.to have_many(:zoos) }
end
