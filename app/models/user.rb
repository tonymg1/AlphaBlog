class User < ApplicationRecord
    has_many :articles, dependent: :destroy
    validates :username, presence: true, 
              uniqueness: { case_sensitive: false },
              length: { minimum: 3, maximum: 25 }
              
    validates :email, presence: true, 
              uniqueness: { case_sensitive: false },
              format: { with: URI::MailTo::EMAIL_REGEXP }
    has_secure_password
  end
  