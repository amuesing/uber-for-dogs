class Appointment < ActiveRecord::Base
  belongs_to :user
  belongs_to :dog_walker

end
