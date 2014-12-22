class AddNewsIdAndUserIdToActiveAdminComment < ActiveRecord::Migration
  def change
    add_column :active_admin_comments, :news_id, :integer
    add_column :active_admin_comments, :user_id, :integer
  end
end
