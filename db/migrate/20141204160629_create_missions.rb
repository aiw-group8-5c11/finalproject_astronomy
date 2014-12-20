class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.text :description
      t.integer :status_id
      t.datetime :lauch_date
      t.datetime :active_date
      t.datetime :finished_date

      t.timestamps
    end
  end
end
