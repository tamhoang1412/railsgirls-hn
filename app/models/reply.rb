class Reply < ActiveRecord::Base
    belongs_to :comment
    validates_presence_of :user_name, :body
    mount_uploader :picture, PictureUploader
end
