class Zoo < ApplicationRecord
  validates :name,
    presence: true,
    length:   { maximum: 255 }

  belongs_to :manager
  has_many   :doctors
  has_many   :animal_keepers
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
