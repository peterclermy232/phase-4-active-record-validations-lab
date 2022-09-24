class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { manimum: 250}
    validates :summary, length: { maximum: 250}
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction']}

    CLICKBAIT_PATTERNS = [
        /won't Believe/
    ]
end
