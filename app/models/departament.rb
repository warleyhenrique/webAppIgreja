class Departament < ApplicationRecord
    has_many :offices
    has_many :roles, through: :offices
end
