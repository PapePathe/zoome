class Animal < ApplicationRecord
  belongs_to :family

  validates :name,
    presence: true,
    length:   {maximum: 255}
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
