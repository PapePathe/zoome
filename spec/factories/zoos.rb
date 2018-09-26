FactoryBot.define do
  factory :zoo do
    name { "Parc Hann" }
  end
end

# == Schema Information
# Schema version: 20180926191222
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
