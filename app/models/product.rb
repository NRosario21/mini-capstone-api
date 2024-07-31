class Product < ApplicationRecord
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { minimum: 1, maximum: 500 }
  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :supplier
  has_many :orders

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
