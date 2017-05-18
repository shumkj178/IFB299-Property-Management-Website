class Property < ApplicationRecord
  def self.search(search)
    where("street LIKE ? OR suburbs LIKE ? OR postcode LIKE ? OR region LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  validates :house_no, presence: true

  validates :street, presence: true

  validates :suburbs, presence: true

  validates :postcode, presence: true,
            length: {minimum: 4, maximum: 4}

  validates :region, presence: true
end
