class Country < ApplicationRecord
    has_and_belongs_to_many :groups
    before_create do
        self.name = name.downcase
    end
    validates :name, uniqueness: true
    
end
