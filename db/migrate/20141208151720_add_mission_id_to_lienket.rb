class AddMissionIdToLienket < ActiveRecord::Migration
  def change
    add_column :lienkets, :mission_id, :integer
  end
end
