class Author < ApplicationRecord
  paginates_per 2
  has_and_belongs_to_many :books
end
