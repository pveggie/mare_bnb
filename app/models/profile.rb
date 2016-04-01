class Profile < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

  TITLES = ["His Royal Highness", "Her Royal Highness", "Baron", "Baroness", "Lord", "Lady", "Prince", "Princess"]
end
