class Manager < ApplicationRecord
  validates :name,
    presence: true,
    length:   { maximum: 255 }

  has_many :zoos
end

# == Schema Information
# Schema version: 20180923152356
#
# Table name: managers
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
