class User < ActiveRecord::Base

  # Remember to create a migration!

  #has_secure_password  #no era necesario pal ejercicio -.-""
  #before_validation :password_valid?
      #Adds methods to set and authenticate against a BCrypt password.
      #This mechanism requires you to hace a << password_digest >> attribute
  validates :name, :password, presence: true
  validates :email, presence: true, uniqueness: true

  private

  #def password_valid?
  #  self.password_digest.try(:authenticate, self.password_confirmation )

  #end

  # ej. User.authenticate('fernando@codea.mx', 'qwerty')

  def self.authenticate(email, password)
    # si el email y el password corresponden a un usuario valido, regresa el usuario
    # de otra manera regresa nil
    user = User.find_by(email: email, password: password)

    if user != nil
      return user
    else
      return nil
    end


    
  end

end
