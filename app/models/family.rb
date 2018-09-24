class Family < ApplicationRecord
  validates :name,
    presence: true,
    length:   { maximum: 255 }
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
