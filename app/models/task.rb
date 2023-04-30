class Task < ApplicationRecord
  has_many :categories, through: :category_tasks
  has_many :category_tasks
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :deadline, presence: true



end
