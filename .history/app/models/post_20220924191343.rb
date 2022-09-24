class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { manimum: 250}
    validates :summary, length: { maximum: 250}
end
