class CreateUserFiles < ActiveRecord::Migration
  def change
    create_table :user_files do |t|
      t.references :user, index: true
      t.string :file
      t.references :file_status, index: true
      t.references :file_type, index: true
      t.string :title
      t.string :producer
      t.string :creator
      t.datetime :creation_date
      t.datetime :mod_date
      t.text :metadata
      t.integer :page_count
      t.string :pdf_version

      t.timestamps
    end
  end
end
