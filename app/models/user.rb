class User < ActiveRecord::Base

  # Remember to create a migration!

  has_secure_password
  #before_validation :password_valid?
      #Adds methods to set and authenticate against a BCrypt password.
      #This mechanism requires you to hace a << password_digest >> attribute
  validates :name, :password_digest, presence: true
  validates :email, presence: true, uniqueness: true

  private

  #def password_valid?
  #  self.password_digest.try(:authenticate, self.password_confirmation )

  #end

  # ej. User.authenticate('fernando@codea.mx', 'qwerty')

  def self.authenticate(email, password)
    # si el email y el password corresponden a un usuario valido, regresa el usuario
    # de otra manera regresa nil
    
  end

end
