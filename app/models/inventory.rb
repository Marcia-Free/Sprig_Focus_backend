class Inventory < ApplicationRecord
    belongs_to :user, class_name: "user", foreign_key: "user_id"
    belongs_to :item, class_name: "item", foreign_key: "item_id"
end
