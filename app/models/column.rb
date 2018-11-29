class Column < ApplicationRecord
  belongs_to :author, inverse_of: :columns
  belongs_to :category, inverse_of: :columns
end
