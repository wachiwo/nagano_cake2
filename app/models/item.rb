class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :genre, optional: true
  enum sales_status: { on_sale: 0, draft: 1 }
  has_many :cart_items, dependent: :destroy
  
  # 消費税を加えた商品価格
    def add_tax_price
        (self.price * 1.10).round
    end
end
