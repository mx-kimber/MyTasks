class Task < ApplicationRecord
  belongs_to :user
  has_many :category_tasks
  has_many :categories, through: :category_tasks

  validates :title, presence: true
  validates :description, presence: true
  validates :deadline, presence: true



end
