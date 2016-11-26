class HasCaracteristique < ApplicationRecord
  belongs_to :product
  belongs_to :caracteristique
end
