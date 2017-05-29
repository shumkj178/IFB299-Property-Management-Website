class Property < ApplicationRecord
  def self.search(search)
    where("street ILIKE ? OR suburbs ILIKE ? OR postcode ILIKE ? OR region ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  validates :house_no, presence: true

  validates :street, presence: true

  validates :suburbs, presence: true

  validates :postcode, presence: true,
            length: {minimum: 4, maximum: 4}

  validates :region, presence: true
end
