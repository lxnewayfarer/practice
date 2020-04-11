class Album < ApplicationRecord
    mount_uploader :cover, CoverUploader
    belongs_to :group
    has_and_belongs_to_many :songs
    has_and_belongs_to_many :genres
end
