class Booking < ActiveRecord::Base
  belongs_to :stallion
  belongs_to :user
end
