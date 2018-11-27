class Cart < ApplicationRecord
  has_many :line_items, depedent: :destroy

  def add_cigar(cigar)
    current_item = line_items.find_by(cigar_id: cigar.id)
    if current_item
      current_item.increment(:quantity)
    else
      current_item = line_item.build(cigar_id: cigar.id)
    end
    current_item
  end
end
