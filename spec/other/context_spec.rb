describe 'context testing' do
  before(:each) do # before each block, whether that is context, describe or it. 'context' = 'describe' btw in functionality
    # in this case, it will run for two times
    @post = Post.new
  end

  context 'default title set' do
    before(:each) do
      @post.title = 'default'
    end

    it 'checks the default title' do
      expect(@post.valid?).to be true
      expect(@post.title).to eq('default')
    end
  end

  context 'another title set' do
    before(:each) do
      @post.title = 'something else'
    end

    it 'checks the other title' do
      expect(@post.title).to eq('something else')
    end
  end
end
