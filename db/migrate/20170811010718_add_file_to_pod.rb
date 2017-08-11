class AddFileToPod < ActiveRecord::Migration[5.1]
  def change
    add_column :pods, :image, :string
  end
end
