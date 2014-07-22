class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column "email",:string,:null=>false
      t.timestamps
    end
  end
end
