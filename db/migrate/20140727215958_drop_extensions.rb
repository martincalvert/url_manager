class DropExtensions < ActiveRecord::Migration
  def change
    remove_column("domains","domain_extensions")
  end
end
