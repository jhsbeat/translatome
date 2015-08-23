class CreateFileTypes < ActiveRecord::Migration
  def change
    create_table :file_types do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
