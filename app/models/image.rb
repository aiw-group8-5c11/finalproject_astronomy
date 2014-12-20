class Image < ActiveRecord::Base
  validates_presence_of :image_path
  validates_presence_of :attachment

  belongs_to:news
  belongs_to:mission
  belongs_to:detail
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :image_path, presence:true # Make sure the owner's name is present.

end
