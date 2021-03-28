require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '新商品登録' do

    context '新商品登録できるとき' do
      it 'image,name,text,stock_id,deployment,arrival_dayが入力されていれば登録可能' do
        expect(@item).to be_valid
      end
      it 'storage_locationは空でも登録可能' do
        @item.storage_location = ""
        expect(@item).to be_valid
      end
    end

    context '新商品登録できないとき' do
      it 'imageが無いと登録不可' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'nameが無いと登録不可' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end 
      it 'nameは50文字以上は登録不可' do
        @item.name = 'iiiiiiiiii,iiiiiiiiii,iiiiiiiiii,iiiiiiiiii,iiiiiiiiii,iiiiiiiiii,'
        @item.valid?
        expect(@item.errors.full_messages).to include("Name is too long (maximum is 50 characters)")
      end
      it 'textが無いと登録不可' do
        @item.text = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Text can't be blank")
      end
      it 'stock_idが1だと登録不可' do
        @item.stock_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Stock must be other than 1")
      end
      it 'deploymentが無いと登録不可' do
        @item.deployment = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Deployment can't be blank")
      end
      it 'arrival_dayが無いと登録不可' do
        @item.arrival_day = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Arrival day can't be blank")
      end
    end
  end
end
