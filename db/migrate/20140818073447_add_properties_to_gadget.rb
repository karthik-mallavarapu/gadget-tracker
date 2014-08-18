class AddPropertiesToGadget < ActiveRecord::Migration
  def change
    add_column :gadgets, :name, :string
    add_column :gadgets, :description, :text
    add_reference :gadgets, :user, index: true
  end
end
