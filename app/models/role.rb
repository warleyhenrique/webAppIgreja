class Role < ApplicationRecord
    has_many :offices
    has_many :departament, through: :offices
end
