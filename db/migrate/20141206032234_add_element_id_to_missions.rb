class AddElementIdToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :element_id, :integer
  end
end
