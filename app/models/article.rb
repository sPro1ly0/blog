class Article < ApplicationRecord
    # Associating Models
    # Each comment belongs to one article.
    # One article can have many comments.
    # dependent will delete associated comments if an articles is deleted
    has_many :comments, dependent: :destroy

    # title with min. character length of 5
    validates :title, presence: true, length: { minimum:5 }
end
