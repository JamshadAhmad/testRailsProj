require 'rails_helper'

RSpec.configure do |config|
  config.before(:suite) do
    # runs once before whole file
  end
end

RSpec.describe Post, type: :model do
  let(:post) { Post.new } # lazy loaded, will only run once per example it is being used
  # let!(:post) will actually run before each example even if it is not used there
  # it is now behaving like `before do` block
  let(:x) { 1 + 1 }
  let(:y) { x + 3 } # we can use one let variable in another one as well

  it 'checks creation of a new post and tests before save callback to replace special characters' do
    post.title = ' abc-  '

    post.save

    expect(post.title).to eq('abc_')

    post.title = 'something-new '

    expect(post.title).to eq('something-new ')
  end

  it 'checks creation of a post whose title should not change' do
    post.title = 'xy_zabs'

    post.save

    expect(post.title).to eq('xy_zabs')
  end

  it 'is a sample test to check behavior of let' do
    expect(y).to eq(5), 'this is a custom error message' # putting a custom error message
  end
end
