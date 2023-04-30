class Category < ApplicationRecord
  before_action :require_login
  has_many :tasks, through: :category_tasks
  validates :name, presence: true, uniqueness: true
end

