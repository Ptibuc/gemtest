class HasCategorie < ApplicationRecord
  belongs_to :product
  belongs_to :categorie
end
