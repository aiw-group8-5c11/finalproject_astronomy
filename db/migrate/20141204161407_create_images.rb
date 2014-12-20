class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :image_path

      t.timestamps
    end
  end
end
