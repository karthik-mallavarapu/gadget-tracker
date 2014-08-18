class AddFileToImage < ActiveRecord::Migration
  def change
    add_column :images, :file, :string
    add_column :images, :name, :string
  end
end
