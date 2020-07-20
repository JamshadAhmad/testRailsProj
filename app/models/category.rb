class Category < ApplicationRecord
  has_and_belongs_to_many :posts
  attr_reader :title

  def title=(title)
    @title = title.strip
  end
end
