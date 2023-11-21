require 'rails_helper'
RSpec.describe Milk, type: :model do
  before do
    @milk = FactoryBot.build(:milk)
  end

  describe '状態新規記録' do
    context '新規記録できるとき' do
      it 'すべての値が正しいときは登録できる' do
        expect(@milk).to be_valid
      end
    end

    context '新規記録できないとき' do
      it 'condition_idが空では登録できない' do
        @milk.condition_id = ''
        @milk.valid?
        expect(@milk.errors.full_messages).to include("Condition can't be blank")
      end
      it 'timeが空では登録できない' do
        @milk.time = nil
        @milk.valid?
        expect(@milk.errors.full_messages).to include("Time can't be blank")
      end
      it 'condition_idは---以外を選択しないと出品できない' do
        @milk.condition_id = '1'
        @milk.valid?
        expect(@milk.errors.full_messages).to include('Condition must be other than 1')
      end
    end
  end
end
