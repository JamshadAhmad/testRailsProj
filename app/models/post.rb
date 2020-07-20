class Post < ApplicationRecord
  has_many :comments, dependent: :destroy # Without this dependent, comment don't get delete with Post, This applies cascading I think
  before_save :replace_special_chars

  private

  def replace_special_chars
    replacements = { ' ' => '_', '-' => '_' }
    self.title = title.strip.split('').map { |i| replacements[i] || i }.join
  end
end
