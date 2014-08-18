class AddGadgetReferenceToImage < ActiveRecord::Migration
  def change
    add_reference :images, :gadget, index: true
  end
end
