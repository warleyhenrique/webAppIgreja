class Member < ApplicationRecord
  belongs_to :kind
  has_one :address
  has_many :phones
  has_many :offices
  
  validates :first_name, presence: true, length: {minimum: 3}
  validates :full_name, presence: true, length: {minimum: 10}
  
  def self.search(term)
    if term
      where('first_name LIKE ?', "%#{term}%")
    else
      all
    end
  end
end
