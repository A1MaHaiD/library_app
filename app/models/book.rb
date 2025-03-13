class Book < ApplicationRecord
  paginates_per 1
  has_and_belongs_to_many :authors
end
