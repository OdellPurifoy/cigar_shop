class LineItem < ApplicationRecord
  belongs_to :cigar
  belongs_to :cart
end
