class Edition < ApplicationRecord
  geocoded_by :city
  has_many :articles
end
