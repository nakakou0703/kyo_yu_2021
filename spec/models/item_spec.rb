require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '新商品登録' do

    context '新商品登録できるとき' do
      it '商品画像,商品名,商品の説明,在庫の有無,展開場所,入荷日が入力されていれば登録可能' do
        expect(@item).to be_valid
      end
      it '在庫の場所は空でも登録可能' do
        @item.storage_location = ""
        expect(@item).to be_valid
      end
    end

    context '新商品登録できないとき' do
      it '商品画像が無いと登録不可' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("画像を入力してください")
      end
      it '商品名が無いと登録不可' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("名前を入力してください")
      end 
      it '商品名は50文字以上は登録不可' do
        @item.name = 'iiiiiiiiii,iiiiiiiiii,iiiiiiiiii,iiiiiiiiii,iiiiiiiiii,iiiiiiiiii,'
        @item.valid?
        expect(@item.errors.full_messages).to include("名前は50文字以内で入力してください")
      end
      it '商品の説明が無いと登録不可' do
        @item.text = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("商品の説明を入力してください")
      end
      it '在庫の有無が1だと登録不可' do
        @item.stock_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("在庫の有無は1以外の値にしてください")
      end
      it '展開場所（陳列した場所）が無いと登録不可' do
        @item.deployment = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("展開場所を入力してください")
      end
      it '入荷日が無いと登録不可' do
        @item.arrival_day = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("入荷日を入力してください")
      end
    end
  end
end
