class User < ActiveRecord::Base
  has_secure_password
  	has_many :stories
  	has_many :groups
  	
    validates :first_name, presence: true, length: {in: 1..20}
  	validates :last_name, presence: true, length: {in: 1..20}
  	validates :email, presence: true, uniqueness: {case_sensitive: false},
	format: {with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :password, presence: true, length: {in: 1..20}
end
