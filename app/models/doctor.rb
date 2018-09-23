class Doctor < ApplicationRecord
  belongs_to :zoo
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
