class Property < ApplicationRecord
  def self.search(search)
    where("street LIKE ? OR suburbs LIKE ? OR postcode LIKE ? OR region LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
