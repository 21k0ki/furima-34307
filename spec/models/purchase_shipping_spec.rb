require 'rails_helper'

RSpec.describe PurchaseShipping, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @item = FactoryBot.create(:item)
    @purchase_shipping = FactoryBot.build(:purchase_shipping, user_id: @user.id, item_id: @item.id)
    # sleep 0.1
  end


  describe '商品の購入' do
    context '商品の購入ができないとき' do

      it 'tokenが空では登録できない' do
        @purchase_shipping.token = ''
        @purchase_shipping.valid?
        expect(@purchase_shipping.errors.full_messages).to include("Token can't be blank")
      end
      it 'postal_codeが空では登録できない' do
        @purchase_shipping.postal_code = ''
        @purchase_shipping.valid?
        expect(@purchase_shipping.errors.full_messages).to include("Postal code can't be blank")
      end
      it 'postal_codeに-がない登録できない' do
        @purchase_shipping.postal_code = "112333"
        @purchase_shipping.valid?
        expect(@purchase_shipping.errors.full_messages).to include("Postal code is invalid. Include hyphen(-)")
      end
      it 'prefecture_idがないと登録できない' do
        @purchase_shipping.prefecture_id = 0
        @purchase_shipping.valid?
        expect(@purchase_shipping.errors.full_messages).to include("Prefecture must be other than 0")
      end
      it 'cityが空では登録できない' do
        @purchase_shipping.city = ''
        @purchase_shipping.valid?
        expect(@purchase_shipping.errors.full_messages).to include("City can't be blank")
      end
      it 'house_numberが空では登録できない' do
        @purchase_shipping.house_number = ''
        @purchase_shipping.valid?
        expect(@purchase_shipping.errors.full_messages).to include("House number can't be blank")
      end
      it 'phone_numberが空では登録できない' do
        @purchase_shipping.phone_number = ''
        @purchase_shipping.valid?
        expect(@purchase_shipping.errors.full_messages).to include("Phone number Input only number")
      end
      it 'phone_numberは数字でないといけない' do
        @purchase_shipping.phone_number = 'asfagagf'
        @purchase_shipping.valid?
        expect(@purchase_shipping.errors.full_messages).to include("Phone number Input only number")
      end
      it 'phone_numberは全角数字だと登録できない' do
        @purchase_shipping.phone_number = "３２４"
        @purchase_shipping.valid?
        expect(@purchase_shipping.errors.full_messages).to include("Phone number Input only number")
      end
      it 'phone_numberは１２桁だと登録でいない'do
        @purchase_shipping.phone_number = "111111111111"
        @purchase_shipping.valid?
        expect(@purchase_shipping.errors.full_messages).to include("Phone number Input only number")
      end


    context '商品が購入できるとき' do
      it 'token,postal_code,prefecture_id,city,house_number,phone_numberが存在するとき' do
        expect(@purchase_shipping).to be_valid
      end
      it 'building_nameはなくても登録できる' do
        expect(@purchase_shipping).to be_valid
      end
    end
    end
  end
end
