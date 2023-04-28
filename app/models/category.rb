class Category < ApplicationRecord
  has_many :tasks,
  through :category_tasks
end
