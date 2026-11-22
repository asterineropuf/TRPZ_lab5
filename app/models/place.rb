class Place < ApplicationRecord
  belongs_to :district, optional: true
  has_one :accessibility_passport, dependent: :destroy
  has_many :disability_types_places
  has_many :disability_types, through: :disability_types_places

  validates :name, presence: true, length: { minimum: 3 }
  validates :category, presence: true
  validates :address, presence: true
end