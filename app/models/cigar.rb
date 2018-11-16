class Cigar < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON # If SQLite is used

  belongs_to :user, optional: true

  validates :brand, :origin, :size, :shape, :binder, :filler, :wrapper, :price, presence: true
  validates :description, presence: true, length: { maximum: 255, too_long: '%{count} characters is the maximum allowed.' }
  validates :price, numericality: { only_integer: true }, length { maximum: 7 }

  BRAND = ["Drew Estate", "Padron", "My Father", "Oliva", "Punch", "Cohiba", "Monticristo", "Roma Craft", "Davidoff", "Illusione"]
  WRAPPER = ["Candela", "Connecticut", "Maduro", "Natural"]
  BINDER = ["Nicuraguan", "Dominican", "Sumatran", "Mexican", "Honduran", "Cuban"]
  FILLER = ["Nicuraguan", "Dominican", "Sumatran", "Mexican", "Honduran", "Cuban", "Mixed"]
end
