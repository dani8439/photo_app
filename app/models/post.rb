class Post < ApplicationRecord
    validates :user_id, presence: true 
    validates :image, presence: true 
    has_one_attached :image

    belongs_to :user
    # has_attached_file :image, styles: { :medium => "640px" }
    # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
