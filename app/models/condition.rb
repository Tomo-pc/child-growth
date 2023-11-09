class Condition < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ミルク' },
    { id: 3, name: 'おしっこ' },
    { id: 4, name: 'うんち' },
    { id: 5, name: '寝た' },
    { id: 6, name: '起きた' },
    { id: 7, name: '泣いた' }
  ]

  include ActiveHash::Associations
  has_many :milks

end