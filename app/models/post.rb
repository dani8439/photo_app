class Post < ApplicationRecord
    belongs_to :user
    # belongs_to :user, optional: true // need according to stack exchange and new docs for rspec?
    validates :user_id, presence: true 
    validates :image, presence: true 
    has_one_attached :image
end
