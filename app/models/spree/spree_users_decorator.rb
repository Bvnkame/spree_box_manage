module Spree
  User.class_eval do
    has_many :boxes , :class_name => "Bm::Box", foreign_key: 'spree_user_id'
    
    # devise :database_authenticatable,
    # :registerable,
    # :recoverable,
    # :rememberable,
    # :trackable,
    # :validatable
#     
    # before_save :ensure_authentication_token
#   
    # def ensure_authentication_token
      # self.authentication_token ||= generate_authentication_token
    # end
#   
    # def generate_authentication_token
      # loop do
        # token = Devise.friendly_token
        # break token unless User.where(authentication_token: token).first
      # end
    # end
  end
end