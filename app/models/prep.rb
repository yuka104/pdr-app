class Prep < ApplicationRecord
  belongs_to :user
  has_many :reviews

  with_options presence: true do
    validates :purpose
    validates :reason
    validates :task
    validates :memo
  end
end
