class Song < ApplicationRecord
    has_one :user

    validates :url, presence: true
end
