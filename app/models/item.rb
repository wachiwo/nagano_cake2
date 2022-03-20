class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :genre
  enum sales_status: { on_sale: 0, draft: 1 }
end
