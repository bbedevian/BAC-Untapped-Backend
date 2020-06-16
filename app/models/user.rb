class User < ApplicationRecord
    has_many :user_beers
    has_many :beers, through: :user_beers

    validates :name, uniqueness: true 

end
