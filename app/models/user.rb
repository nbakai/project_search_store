class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :confirmable, :omniauthable, :omniauth_providers => [:facebook]
  has_one_attached :avatar, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :orders, dependent: :destroy 
  has_many :products, through: :orders, dependent: :destroy
  has_many :billings, dependent: :destroy 

  has_many :visits, class_name: "Ahoy::Visit"
  has_many :events, class_name: "Ahoy::Event"
  
  validates :avatar, content_type: [:png, :jpg, :jpeg]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name 
      user.avatar = auth.info.image
    end
  end

  def password_required?
    super && provider.blank?
  end
  def update_with_password(params, *options)
    if encrypted_password.blank? && provider.present?
      update_attributes(params, *options)  
    else
       super
    end
  end
  
end
