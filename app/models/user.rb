class User < ActiveRecord::Base
  # Remember to create a migration!
  #has_secure_password
      #Adds methods to set and authenticate against a BCrypt password.
      #This mechanism requires you to hace a << password_digest >> attribute
end
