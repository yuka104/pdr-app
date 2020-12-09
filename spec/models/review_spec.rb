require 'rails_helper'

RSpec.describe Review, type: :model do
  before do
    @review = FactoryBot.build(:review)
  end

  describe 'review新規登録' do
    context '新規登録がうまくいくとき' do
      it "全項目が存在すれば登録できる" do
        expect(@review).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "resultが空では登録できない" do
        @review.result = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Result can't be blank")
      end
      it "level_idが空では登録できない" do
        @review.level_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Level can't be blank")
      end
      it "level_idで１番目を選ぶと登録できない" do
        @review.level_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Level must be other than 1")
      end
      it "successが空では登録できない" do
        @review.success = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Success can't be blank")
      end
      it "failureが空では登録できない" do
        @review.failure = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Failure can't be blank")
      end
      it "improveが空では登録できない" do
        @review.improve = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Improve can't be blank")
      end
      
    end
  end
end