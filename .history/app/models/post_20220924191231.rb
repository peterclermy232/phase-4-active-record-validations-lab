class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, len
end
