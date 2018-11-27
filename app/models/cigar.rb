class Cigar < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON # If SQLite is used

  belongs_to :user, optional: true

  validates :brand, :origin, :size, :shape, :binder, :filler, :wrapper, :price, presence: true
  validates :description, presence: true, length: { maximum: 255, too_long: '%{count} characters is the maximum allowed.' }
  validates :price, length: { maximum: 7 }

  BRAND = ['Drew Estate', 'Padron', 'My Father', 'Oliva', 'Punch', 'Cohiba', 'Monticristo', 'Roma Craft', 'Davidoff', 'Illusione'].freeze
  WRAPPER = %w[Candela Connecticut Maduro Natural].freeze
  BINDER = %w[Nicuraguan Dominican Sumatran Mexican Honduran Cuban].freeze
  FILLER = %w[Nicuraguan Dominican Sumatran Mexican Honduran Cuban Mixed].freeze
end
