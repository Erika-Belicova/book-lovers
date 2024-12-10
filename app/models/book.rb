class Book < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :title, presence: true
  validates :author, presence: true
  validates :year, presence: true
  validates :genre, presence: true
  validates :summary, presence: true
end
