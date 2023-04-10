class Genre < ApplicationRecord
 has_many :image

  validates :name, {presence: true}
end
