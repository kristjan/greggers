class CreateGregs < ActiveRecord::Migration
  def self.up
    create_table :gregs do |t|
      t.string   :name
      t.integer  :x
      t.integer  :y
      t.float    :scale
      t.integer  :head_id
      t.string   :photo_file_name
      t.string   :photo_content_type
      t.integer  :photo_file_size
      t.datetime :photo_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :gregs
  end
end
