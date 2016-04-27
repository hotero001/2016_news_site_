class Message
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content

  validates :email, presence: true
  validates :name, presence: true
  validates :content, presence: true
end
