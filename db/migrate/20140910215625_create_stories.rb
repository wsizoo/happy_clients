class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :rep_name
      t.string :company_name
      t.string :vas_object
      t.string :case_link
      t.string :website
      t.string :description
      t.string :quote

      t.timestamps
    end
  end
end
