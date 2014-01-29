class AddPidToProducts < ActiveRecord::Migration
  def change
    add_column :products, :pid, :string
  end
end
