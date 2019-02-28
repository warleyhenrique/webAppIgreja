class Kind < ApplicationRecord
    has_many :members
    
    def self.search(term)
        if term
          where('description LIKE ?', "%#{term}%")
        else
          all
        end
    end
end
