class Manager < ApplicationRecord
  validates :name,
    presence: true,
    length:   { maximum: 255 }

  has_many :zoos
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
