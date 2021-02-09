class Goal < ApplicationRecord
    has_one :user
    has_many :tasks
    has_one :tag



    
end
