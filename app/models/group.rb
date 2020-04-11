class Group < ApplicationRecord
    has_and_belongs_to_many :countries
    has_many :albums
end
