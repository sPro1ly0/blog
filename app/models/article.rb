class Article < ApplicationRecord
    # Associating Models
    # Each comment belongs to one article.
    # One article can have many comments.
    has_many :comments
    
    # title with min. character length of 5
    validates :title, presence: true, length: { minimum:5 }
end
