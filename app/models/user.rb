class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]

  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :posts
  has_many :comments
  has_many :blogposts
  has_one :profile

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  def shared_interests
    self.interests.map do |interest|
      "#{interest.user_names} share a passion for #{interest.title} with you"
    end
  end

  def display_name
    if self.profile
      if !self.profile.real_name.empty? && !self.profile.real_name.nil?
        self.profile.real_name
      else
        self.profile.alias
      end
    else
      self.email
    end
  end
end
