class User < ActiveRecord::Base
  has_many :purchases
  has_and_belongs_to_many :stores
  has_many :products
  has_many :policies
  has_secure_password
  validates_confirmation_of :password
  mount_uploader :image, ImageUploader #para subir imagenes



  private
  def confirmation_token
    if self.confirm_token.blank?
      self.confirm_token = SecureRandom.urlsafe_base64.to_s
    end
  end


end
