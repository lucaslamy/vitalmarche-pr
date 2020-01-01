class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :recoverable, :rememberable, :trackable, :timeoutable, :timeout_in => 15.minutes
  auto_strip_attributes :name, :email
  auto_upcase_attributes :name
  auto_capitalize_attributes :name

  # contraintes de l'enregistrement
  validates :name,
            presence: true,
            length: {minimum: 2}





end