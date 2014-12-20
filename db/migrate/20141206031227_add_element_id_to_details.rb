class AddElementIdToDetails < ActiveRecord::Migration
  def change
    add_column :details, :element_id, :integer
  end
end
