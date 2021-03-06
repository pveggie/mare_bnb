class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :email, presence: true
  validates :first_name, presence: true
  has_many :bookings
  has_many :stallions
  has_one :profile

  after_create :create_profile
  # has_many :stallions, through: :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def create_profile
    self.profile = Profile.new
  end
end
