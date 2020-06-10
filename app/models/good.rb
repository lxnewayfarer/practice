class Good < ApplicationRecord
    mount_uploader :cover, CoverUploader
    has_many :orders
end
