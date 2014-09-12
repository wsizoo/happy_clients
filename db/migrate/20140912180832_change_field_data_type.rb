class ChangeFieldDataType < ActiveRecord::Migration
  def change
    change_column :stories, :description, :text
    change_column :stories, :quote, :text
  end
end
