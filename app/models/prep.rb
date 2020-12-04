class Prep < ApplicationRecord

  belongs_to :user

  with_options presence: true do
    validates :purpose
    validates :reson
    validates :task
end
