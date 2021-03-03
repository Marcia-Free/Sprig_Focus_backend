class Item < ApplicationRecord
    has_many :users, through: :inventory
end
