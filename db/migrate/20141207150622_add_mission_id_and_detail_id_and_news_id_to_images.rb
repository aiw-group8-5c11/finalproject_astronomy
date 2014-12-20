class AddMissionIdAndDetailIdAndNewsIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :mission_id, :integer
    add_column :images, :news_id, :integer
    add_column :images, :detail_id, :integer
  end
end
