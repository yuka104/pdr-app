require 'rails_helper'

RSpec.describe Prep, type: :model do
  before do
    @prep = FactoryBot.build(:prep)
  end

  describe 'prep新規登録' do
    context '新規登録がうまくいくとき' do
      it "全項目が存在すれば登録できる" do
        expect(@prep).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "purposeが空では登録できない" do
        @prep.purpose = nil
        @prep.valid?
        expect(@prep.errors.full_messages).to include("Purpose can't be blank")
      end
      it "reasonが空では登録できない" do
        @prep.reason = nil
        @prep.valid?
        expect(@prep.errors.full_messages).to include("Reason can't be blank")
      end
      it "taskが空では登録できない" do
        @prep.task = nil
        @prep.valid?
        expect(@prep.errors.full_messages).to include("Task can't be blank")
      end
      it "memoが空では登録できない" do
        @prep.memo = nil
        @prep.valid?
        expect(@prep.errors.full_messages).to include("Memo can't be blank")
      end
    end
  end
end
