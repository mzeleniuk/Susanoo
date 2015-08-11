class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  PAYMENT_TYPES = ['Check', 'Credit card', 'Purchase order']

  validates :name, :address, presence: true, length: {maximum: 35}
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  validates :pay_type, inclusion: PAYMENT_TYPES

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
