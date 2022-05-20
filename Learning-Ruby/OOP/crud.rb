# frozen_string_literal: true

# One module for Crud
module Crud
  require('bcrypt')
  puts 'Module CRUD activated'

  # Create a password with hash
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  # Check password is valid
  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  # Create a array of hash password for users
  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  # Authenticator for user, check_password and username
  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      return user_record if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
    end
    'Credentials were not correct'
  end
end
