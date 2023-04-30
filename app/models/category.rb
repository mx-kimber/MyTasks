class Category < ApplicationRecord


  has_many :tasks, through: :category_tasks
  validates :name, presence: true, uniqueness: true

end
