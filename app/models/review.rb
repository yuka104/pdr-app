class Review < ApplicationRecord
  belongs_to :prep
  belongs_to :user

  with_options presence: true do
    validates :result
    validates :success
    validates :failure
    validates :improve

    with_options numericality: { other_than: 1 } do
      validates :level_id
    end
  end

end
