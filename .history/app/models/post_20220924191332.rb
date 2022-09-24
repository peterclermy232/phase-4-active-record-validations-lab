class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { maximum: 250}
    validates :summary, length: { maxim}
end
