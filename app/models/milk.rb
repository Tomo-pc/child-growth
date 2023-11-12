class Milk < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  belongs_to :condition
  belongs_to :amount
  has_one_attached :image

  validates :condition_id, presence: true, numericality: { other_than: 1 } 
  validates :time, presence: true

end
