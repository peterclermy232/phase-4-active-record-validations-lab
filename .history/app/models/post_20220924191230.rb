class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, l
end
