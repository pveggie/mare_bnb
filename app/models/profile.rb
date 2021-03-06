class Profile < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  TITLES = ["His Royal Highness", "Her Royal Highness", "Baron", "Baroness", "Lord", "Lady", "Prince", "Princess"]
end
