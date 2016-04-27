class Product < ActiveRecord::Base
  validates :title, :image_url, :body, :description, :category_id, presence: true
  belongs_to :category
end
