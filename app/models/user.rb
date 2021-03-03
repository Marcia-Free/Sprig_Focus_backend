class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    has_many :goals
    has_many :songs

end
