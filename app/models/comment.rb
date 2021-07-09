class Comment < ApplicationRecord
  belongs_to :post
  # validates :name, presence: true, length: { minimum: 5 }
  # validates :body, presence: true, length: { minimum: 15 }
end