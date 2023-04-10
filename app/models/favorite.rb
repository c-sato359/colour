class Favorite < ApplicationRecord
    belong_to  :customer
    belong_to :image
end
