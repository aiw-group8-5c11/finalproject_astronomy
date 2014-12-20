class CreateLienkets < ActiveRecord::Migration
  def change
    create_table :lienkets do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
