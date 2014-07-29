class AlterDomains < ActiveRecord::Migration
  def change
    add_column("domains","domain_extensions","string")
    add_column("domains","redirect_url","string")
    change_column("domains","redirect","binary")
  end
end
