require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'すべての値が正しいときは登録できる' do
        expect(@user).to be_valid
      end
      it 'emailは@を含むと登録できる' do
        @user.email = 'aaa@ooo'
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'first_nameが空では登録できない' do
        @user.first_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank")
      end
      it 'last_nameが空では登録できない' do
        @user.last_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name can't be blank")
      end
      it 'child_nameが空では登録できない' do
        @user.child_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Child name can't be blank")
      end
      it 'sex_idが空では登録できない' do
        @user.sex_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Sex can't be blank")
      end
      it 'birthdayが空では登録できない' do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Birthday can't be blank")
      end
      it 'imageが空では登録できない' do
        @user.image = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Image can't be blank")
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = 'aaa000'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'sex_idは---以外を選択しないと出品できない' do
        @user.sex_id = '1'
        @user.valid?
        expect(@user.errors.full_messages).to include('Sex must be other than 1')
      end
      it '重複したemailが存在する場合は登録できない' do
        @user.save
        a_user = FactoryBot.build(:user)
        a_user.email = @user.email
        a_user.valid?
        expect(a_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailは@を含まないと登録できない' do
        @user.email = 'aaaooo'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = 'aaa00'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
    end
  end
end
