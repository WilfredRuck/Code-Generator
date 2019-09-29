class ChangeCodeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :codes, :code, :name
  end
end
