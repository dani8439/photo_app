class Post < ApplicationRecord
    belongs_to :user, optional: true
    validates :user_id, presence: true 
    validates :image, presence: true 
    has_one_attached :image
end
