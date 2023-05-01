class Task < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :categories, through: :category_tasks

  validates :title, presence: true
  validates :description, presence: true
  validates :deadline, presence: true



end
