class CreateUserFiles < ActiveRecord::Migration
  def change
    create_table :user_files do |t|
      t.references :user, index: true
      t.string :file
      t.references :file_status, index: true

      t.timestamps
    end
  end
end
