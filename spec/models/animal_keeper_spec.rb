require 'rails_helper'

RSpec.describe AnimalKeeper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
# Schema version: 20180923152356
#
# Table name: animal_keepers
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  zoo_id     :uuid
#
# Indexes
#
#  index_animal_keepers_on_zoo_id  (zoo_id)
#
# Foreign Keys
#
#  fk_rails_...  (zoo_id => zoos.id)
#
