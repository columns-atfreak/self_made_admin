class AddNameToAuthor < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :name, :string, after: :id
  end
end
