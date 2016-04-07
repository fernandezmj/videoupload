class Video < ActiveRecord::Base
  belongs_to :category

  mount_uploader :thumbnail, ThumbnailUploader
  
  mount_uploader :video_link, VideoLinkUploader 
end

# do

#     def set_success(format, opts)
#       self.success = true
#     end
#   end
