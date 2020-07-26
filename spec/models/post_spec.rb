require 'rails_helper'

RSpec.describe Post do
 
  before do 
    @post = build(:post)
  end

  describe '投稿機能バリデーション' do

    it '店名が空だと投稿できないこと' do
      @post.name = ''
      expect(@post.valid?).to eq(false)
    end

    it "imageがないと投稿できないこと" do
      @post.image = ''
      expect(@post.valid?).to eq(false)
    end
  end
end