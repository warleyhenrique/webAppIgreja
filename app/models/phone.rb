class Phone < ApplicationRecord
    belongs_to :member
    
    validates :phone, presence: true, length: {minimum: 5}
end
