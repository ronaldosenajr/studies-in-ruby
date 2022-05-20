# frozen_string_literal: true

require 'bcrypt'
require_relative 'crud'

# Class For class Student
class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username
  attr_reader :password

  # Initialize the class
  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  # print in console
  def to_s
    "Fullname: #{@first_name} #{@last_name}, email address: #{@email}, username: #{@username}, password: #{@password}"
  end
end

ronaldo = Student.new('Ronaldo', 'Sena', 'ronaldo@gmail.com', 'denhosena', '123456789')
puts ronaldo.create_hash_digest(ronaldo.password)
