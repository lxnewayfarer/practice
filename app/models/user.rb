class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :feeds
  before_create do
    self.login = login.downcase
  end
end
