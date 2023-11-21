class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :sex
  has_many :milks
  has_one_attached :image
  

  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :child_name, presence: true
  validates :sex_id, presence: true
  validates :image, presence: true
  validates :birthday, presence: true

  def days_since_birth
    (Date.current - birthday).to_i
  end
end
