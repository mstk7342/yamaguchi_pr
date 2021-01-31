require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe '投稿登録' do
    before do
      @tweet = FactoryBot.build(:tweet)
    end

    context '投稿登録がうまくいくとき' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@tweet).to be_valid
      end
    end

    context '投稿登録ができないとき' do
      it '名称が空だと登録できない' do
        @tweet.name = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Name can't be blank")
      end
      it '内容説明が空だと登録できない' do
        @tweet.text = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Text can't be blank")
      end
      it '投稿画像が空だと登録できない' do
        @tweet.image = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Image can't be blank")
      end
      it 'カテゴリーが選択されていないとき、登録できない' do
        @tweet.category_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Category can't be blank")
      end

      it '市町村が選択されていないとき、登録できない' do
        @tweet.city_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("City can't be blank")
      end
    end
  end
end
