class Office < ApplicationRecord
    belongs_to :departament
    belongs_to :role
    belongs_to :member
end
