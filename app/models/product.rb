class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, through: :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, presence: true, uniqueness: true, length: {minimum: 10}
  validates :description, presence: true, length: {minimum: 10}
  validates :image_url, presence: true, format: {
                          with: %r{\.(gif|jpg|png)\Z}i,
                          message: 'URL should point on image of GIF, JPG or PNG format'
                      }
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0.01}

  def self.latest
    Product.order(:updated_at).last
  end

  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'existing line items')
      return false
    end
  end
end
