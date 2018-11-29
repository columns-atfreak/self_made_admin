class Category < ApplicationRecord
  has_many :columns, dependent: :destroy, inverse_of: :category
end
