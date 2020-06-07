class Article < ApplicationRecord
    # title with min. character length of 5
    validates :title, presence: true, length: { minimum:5 }
end
