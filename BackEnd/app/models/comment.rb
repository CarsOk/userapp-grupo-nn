class Comment < ApplicationRecord
    validates :nombre, :correo, :edad, presence: true
    validates :email, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
