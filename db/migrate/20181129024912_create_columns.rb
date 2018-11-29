class CreateColumns < ActiveRecord::Migration[5.1]
  def change
    create_table :columns do |t|
      t.string :title
      t.text :description
      t.text :sentence
      t.integer :author_id
      t.integer :category_id

      t.timestamps
    end
  end
end
