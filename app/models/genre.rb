class Genre < ApplicationRecord
    has_and_belongs_to_many :albums
    before_create do
        self.name = name.downcase
    end
    validates :name, uniqueness: true
end
