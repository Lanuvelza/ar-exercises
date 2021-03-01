class Store < ActiveRecord::Base
  has_many :employees
  
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :men_or_womens_apparel

  def men_or_womens_apparel
    if mens_apparel == false && womens_apparel == false 
      errors.add(:name, "must be either one of mens apparel or womens apparel") 
    end
  end
end
