class Level < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '達成できた' },
    { id: 3, name: '80%' },
    { id: 4, name: '60%' },
    { id: 5, name: '40%' },
    { id: 6, name: '20%' },
    { id: 7, name: '全く達成できなかった' }
  ]

  include ActiveHash::Associations
  has_many :review

end
 