class AddIndex < ActiveRecord::Migration
  def change
    add_index('domains','domain_name')
    add_index('domains','purchased_date')
    add_index('domains','expiration_date')
  end
end
