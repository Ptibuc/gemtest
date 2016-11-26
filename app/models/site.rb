class Site < ApplicationRecord
  belongs_to :user

  has_many :caracteristiques, :products
end
