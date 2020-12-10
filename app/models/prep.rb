class Prep < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  with_options presence: true do
    validates :purpose
    validates :reason
    validates :task
  end
end
