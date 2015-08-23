class CreateFileStatuses < ActiveRecord::Migration
  def change
    create_table :file_statuses do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
