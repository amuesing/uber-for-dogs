class User < ActiveRecord::Base
    has_many :appointments
    has_many :dog_walkers, through: :appointments
    
end
