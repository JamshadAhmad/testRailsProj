class Post < ApplicationRecord
  has_many :comments, dependent: :destroy # Without this dependent, comment don't get delete with Post, This applies cascading I think
end
