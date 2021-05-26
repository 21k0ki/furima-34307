require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品の出品' do
   context'商品の出品ができないとき' do 

    it 'imageが１枚ないと登録できない' do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end
    it 'item_nameがないと登録できない' do
      @item.item_name = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Item name can't be blank")
    end
    it 'item_descriptionがないと登録できない' do
      @item.item_description = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Item description can't be blank")
    end
    it 'category_idがないと登録でいない' do
      @item.category_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include("Category must be other than 1")
    end
    it 'item_status_idがないと登録できない'do
      @item.item_status_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include("Item status must be other than 1")
    end
    it 'shopping_charge_idがないと登録できない' do
      @item.shopping_charge_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include("Shopping charge must be other than 1")
    end
    it 'shopping_area_idがないと登録できない' do
      @item.shopping_area_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include("Shopping area must be other than 1")
    end
    it 'estimated_shopping_date_idがないと登録できない' do
      @item.estimated_shopping_date_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include("Estimated shopping date must be other than 1")
    end
    it 'selling_priceがないと登録できない' do
      @item.selling_price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Selling price can't be blank")
    end
    it 'selling_priceが299円だと登録できない' do
      @item.selling_price = 299
      @item.valid?
      expect(@item.errors.full_messages).to include ("Selling price is invalid")
    end
    it 'selling_priceが10000000だと登録できない' do
      @item.selling_price = 10000000
      @item.valid?
      expect(@item.errors.full_messages).to include ("Selling price is invalid")
    end
    it 'selling_priceが半角英数でないと出品できない' do
      @item.selling_price = "100aaa"
      @item.valid?
      expect(@item.errors.full_messages).to include ("Selling price is invalid")
    end
    it 'selling_priceは全角文字では登録できない' do
      @item.selling_price = "あああ"
      @item.valid?
      expect(@item.errors.full_messages).to include ("Selling price is invalid")
    end
    it 'selling_priceは半角英語だけでは登録できない' do
      @item.selling_price = 'aaa'
      @item.valid?
      expect(@item.errors.full_messages).to include ("Selling price is invalid")
    end


    context'商品の出品ができるとき' do
     it'image,item_name,item_description,category,item_status,shopping_charge,shopping_area,estimated_shopping_date,selling_priceが存在するとき' do
      expect(@item).to be_valid
     end
    end

    end
  end
end


