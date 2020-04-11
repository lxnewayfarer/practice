class User < ApplicationRecord
  def is_admin
    if self.role == 'admin'
      return true
    else
      return false
    end    
  end

  def is_moderator
    if self.role == 'moderator' or self.role == 'admin'
      return true
    else
      return false
    end    
  end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :feeds
  before_create do
    self.login = login.downcase
  end
end
