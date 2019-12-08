class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable
  auto_strip_attributes :first_name, :last_name, :email
  auto_upcase_attributes :last_name
  auto_capitalize_attributes :first_name
  #before_save :check_password_changed

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


  # contraintes de l'application
 # private
 # def check_password_changed
 #   self.pass_changed = Time.now if changed.include? 'encrypted_password'
 # end

end