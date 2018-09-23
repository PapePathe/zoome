class Zoo < ApplicationRecord
  validates :name,
    presence: true,
    length:   { maximum: 255 }

  belongs_to :manager
end
