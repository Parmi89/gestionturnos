class Image < ApplicationRecord
  belongs_to :pictureable, polymorphic: true, optional: true

  has_attached_file :picture, styles: { small: "64x64", med: "100x100", preview_image_article: "200x200" }, preserve_files: false
  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :picture, attachment_presence: true
end
