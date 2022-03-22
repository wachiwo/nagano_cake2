class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :genre, optional: true
  enum sales_status: { on_sale: 0, draft: 1 }
  has_many :cart_items, dependent: :destroy
end
