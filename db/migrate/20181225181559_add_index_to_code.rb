class AddIndexToCode < ActiveRecord::Migration[5.1]
  def change
    add_index :codes, :code, unique: true
  end
end
