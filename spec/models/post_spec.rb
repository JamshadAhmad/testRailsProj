require 'rails_helper'

RSpec.configure do |config|
  config.before(:suite) do
    # runs once before whole file
  end
end

RSpec.describe Post, type: :model do
  let(:post) { Post.new }

  it 'checks creation of a new post and tests before save callback to replace special characters' do
    post.title = ' abc-  '

    post.save

    expect(post.title).to eq('abc_')
  end

  it 'checks creation of a post whose title should not change' do
    post.title = 'xy_zabs'

    post.save

    expect(post.title).to eq('xy_zabs')
  end
end
