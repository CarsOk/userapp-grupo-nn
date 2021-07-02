class Comment < ApplicationRecord
    validates :nombre, :correo, :edad, presence: true
    validates :correo, uniqueness: true
    validates :correo, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
