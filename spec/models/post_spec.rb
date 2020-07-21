require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'checks creation of a new post and tests before save callback to replace special characters' do
    post = Post.new

    post.title = ' abc-  '

    post.save

    expect(post.title).to eq('abc_')
  end

  it 'checks creation of a post whose title should not change' do
    post = Post.new

    post.title = 'xy_zabs'

    post.save

    expect(post.title).to eq('xy_zabs')
  end
end
