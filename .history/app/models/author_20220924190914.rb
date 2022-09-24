class Author < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :phone_number, len
end
