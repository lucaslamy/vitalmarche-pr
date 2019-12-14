class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable
  auto_strip_attributes :first_name, :last_name, :email
  auto_upcase_attributes :last_name
  auto_capitalize_attributes :first_name

  # getters
  def name
    self.first_name + ' ' + self.last_name
  end

  # contraintes de l'enregistrement
  validates :first_name,
            presence: true,
            length: {minimum: 2}

  validates :last_name,
            presence: true,
            length: {minimum: 2}




end