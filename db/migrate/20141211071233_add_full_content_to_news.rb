class AddFullContentToNews < ActiveRecord::Migration
  def change
    add_column :news, :full_content, :text
  end
end
