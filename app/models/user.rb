class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :groups
  has_many :lunches,
    through: :groups

  devise :trackable, :omniauthable, omniauth_providers: [:github]

  validates :provider, presence: true, inclusion: ["github"]
  validates :uid, presence: true

  def self.from_omniauth(auth)
    find_or_create_by(provider: auth.provider, uid: auth.uid)
  end

  def update_from_omniauth(auth)
    self.email = auth.info.email
    self.name = auth.info.name
    self.image = auth.info.image
    save
  end
end
