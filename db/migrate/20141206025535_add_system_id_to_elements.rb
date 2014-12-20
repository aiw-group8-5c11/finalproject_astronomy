class AddSystemIdToElements < ActiveRecord::Migration
  def change
    add_column :elements, :system_id, :integer
  end
end
