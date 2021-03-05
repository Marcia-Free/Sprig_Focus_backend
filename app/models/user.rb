class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    has_many :goals
    has_many :tasks, through: :goals
    has_many :songs
    has_one :sprig
    has_many :items, through: :inventory

end
