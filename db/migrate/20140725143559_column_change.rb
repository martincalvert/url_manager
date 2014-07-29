class ColumnChange < ActiveRecord::Migration
  def change
    rename_column("domains","domain","domain_name")
  end
end
