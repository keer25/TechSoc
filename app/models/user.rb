class User < ActiveRecord::Base
	before_save { rollno.downcase! }
	validates :name, presence: true, length: { maximum: 50 }
	VALID_ROLL_REGEX = /\A[a-z][a-z]\d\d[db]\d\d\d\z/i
	validates :email, length: { maximum: 255 }
	validates :password, presence: true, length: { minimum: 6, maximum: 50}
	validates :rollno, presence: true, length: { minimum: 8, maximum: 8}, format: { with: VALID_ROLL_REGEX }, 
	          uniqueness: {  case_sensitive: false }
	has_secure_password
end
