class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :name
      t.string    :email
      #has_secure_password
      #Adds methods to set and authenticate against a BCrypt password.
      #This mechanism requires you to hace a << password_digest >> attribute
      t.string    :password
      #Aun no era necesario saber has_secure_password
      #t.string    :password_confirmation

    end
  end#mth change
end#class Users
