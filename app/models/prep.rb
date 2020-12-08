class Prep < ApplicationRecord

  belongs_to :user

  with_options presence: true do
    validates :purpose
    validates :reason
    validates :task
    validates :memo
  end
end
