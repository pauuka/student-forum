class AddIndexToStudentsIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :students, :inindex, unique: true

  end
end
