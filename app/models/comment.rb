class Comment < ActiveRecord::Base
    belongs_to :idea
    belongs_to :user
    has_many :replies
    validates_presence_of :user_name, :body
    mount_uploader :picture, PictureUploader
end
