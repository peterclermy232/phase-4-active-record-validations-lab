class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { manimum: 250}
    validates :summary, length: { maximum: 250}
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction']}

    CLICKBAIT_PATTERNS = [
        /won't Believe/i,
        /Secret/i,
        /Top \d/i,
        /Guess/i
    ]

    def clickbait?
        if CLICKBAIT_PATTERNS.none? { |pat| pat.match title}
        errors.add(:title, "must be cli")
end
